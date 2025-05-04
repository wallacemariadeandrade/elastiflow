#!/bin/bash
echo 'vm.max_map_count=262144' | tee -a /etc/sysctl.conf
sysctl -p
docker compose create
cp GeoLite2-ASN.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-City.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-Country.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
docker compose up -d

echo "Waits 60s for elastiflow to be up..."
sleep 60
curl -XPOST "http://127.0.0.1:5601/api/saved_objects/_import?overwrite=true" -k -H "kbn-xsrf: true" -H "securitytenant: global" --form file=@kibana-8.2.x-flow-codex.ndjson
echo "Finished!"