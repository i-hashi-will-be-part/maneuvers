#!/bin/bash


cat api.fivetran.com_v1_connections.json | jq '.data.items[].service' > service.tmp
cat api.fivetran.com_v1_connections.json | jq '.data.items[].schema'  > schema.tmp

echo "service,schema,$(date -u +"%Y-%m-%d_%H-%M-%S")_UTC"
paste -d',' service.tmp schema.tmp | sed 's/"//g'
