
## Setup Development Environment

- Download and Install Neo4j: [Neo4j Download](https://neo4j.com/download/)
- Launch Neo4j Desktop 2.
- Create instance: 
  - (an Instance represents a database management system (DBMS))
  - Instance name: stack-bubbles
  - Database user: neo4j
  - Password: see 1Password entry
  - _Wait until: `... Running`_
- Create database: stack-bubbles
  - _Wait until: `... Created successfully`_
  - 3 databases: neo4j, stack-bubbles, system
---
- Refs
  - https://neo4j.com/docs/desktop/2.0/installation/ (including removal file system steps)
  - https://neo4j.com/docs/desktop/2.0/

---
- Fivetran connection name list
```
cat > ~/.sCRT/fivetran-hashi-william.widener-at-hashicorp.com-test <<@EOF
export fivetran_API_Key=API_KEY
export fivetran_API_Secret=API_SECRET
export fivetran_Base64_encoded_API_key=BASE64_ENCODED_API_KEY
@EOF

curl -X GET "https://api.fivetran.com/v1/connections" \
     -H "Accept: application/json;version=2" \
     -u "${fivetran_API_Key}:${fivetran_API_Secret}" > api.fivetran.com_v1_connections.json

cat > get-fivetran-connector-detail.sh <<@EOF
#!/bin/bash

cat api.fivetran.com_v1_connections.json | jq '.data.items[].service' > service.tmp
cat api.fivetran.com_v1_connections.json | jq '.data.items[].schema'  > schema.tmp

echo "service,schema,$(date -u +"%Y-%m-%d_%H-%M-%S")_UTC"
paste -d',' service.tmp schema.tmp | sed 's/"//g'

@EOF

---
service,schema,2025-12-02_20-40-16_UTC
netsuite_suiteanalytics,netsuite_suiteanalytics_sb2
salesforce,salesforce_stg
salesforce_sandbox,salesforce_sandbox_stg
fivetran_log,fivetran_logs
marketo,marketo_stg
stripe,stripe_hcp
stripe,stripe_tfc
coupa,coupa_prod
zendesk,zendesk_stg
...

./get-fivetran-connector-detail.sh > fivetran-connector-detail.csv # with header row
```
---
# Graph data model
Ref. [neo4j data modeling](https://neo4j.com/docs/getting-started/data-modeling/tutorial-data-modeling/)
## Domain definition
## Use case - what questions are we trying to answer
make a list of questions to help you identify the application use cases
## Purpose 
describes the nodes and relationships in the domain and includes labels, types, and properties
## Entities
refine with more details
### labels
### node properties
## Relationships
### naming
### relationship direction
### relationship properties

