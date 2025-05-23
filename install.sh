#!/bin/bash
docker compose up --no-start
cp GeoLite2-ASN.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-City.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/
cp GeoLite2-Country.mmdb /var/lib/docker/volumes/elastiflow_elastiflow/_data/

echo "####################"
echo "#    ATTENTION     #"
echo "####################"
echo "Before run, you need to set 'vm.max_map_count=262144 in sysctl.conf'. Please read README.md for more info."
echo "####################"
echo "#    ATTENTION     #"
echo "####################"
echo "To import defaul dashboard, please read README.md file."