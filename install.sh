#!/bin/bash
docker compose create
cp GeoLite2-ASN.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-City.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-Country.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
docker compose up -d

echo "Waiting for elastiflow to be up..."
curl -XPOST "http://127.0.0.1:5601/api/saved_objects/_import?overwrite=true" -k -H "kbn-xsrf: true" -H "securitytenant: global" --form file=@kibana-8.2.x-flow-codex.ndjson