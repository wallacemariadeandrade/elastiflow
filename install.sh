#!/bin/bash
echo "####################"
echo "#    ATTENTION     #"
echo "####################"
echo "You need to set 'vm.max_map_count=262144 in sysctl.conf'. Please read README.md for more info."
echo "To import defaul dashboard, please read README.md file."

docker compose create
cp GeoLite2-ASN.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-City.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-Country.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
docker compose up -d