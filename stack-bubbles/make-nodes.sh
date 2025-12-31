#!/bin/bash


# make Source nodes
echo small test list
while IFS= read -r line; do
    echo "CREATE (s:Source {
              id: randomUUID(),
              name: ${line}
          })
          RETURN s;"
done <<EOF
Fivetran
TFC
terraform_cloud
Census
EOF

# make Ingest_methods nodes
echo small test list
while IFS= read -r line; do
    echo "CREATE (i:Ingest_method {
              id: randomUUID(),
              name: ${line}
          })
          RETURN s;"
done <<EOF
Fivetran
EC2_Script
Segment
DMS
EOF
exit
####
####
# nodes Sources


CREATE (Apollo13:Movie {title: 'Apollo 13', tmdbID: 568, released: '1995-06-30', imdbRating: 7.6, genres: ['Drama', 'Adventure', 'IMAX']})
CREATE (TomH:Person {name: 'Tom Hanks', tmdbID: 31, born: '1956-07-09'})
CREATE (MegR:Person {name: 'Meg Ryan', tmdbID: 5344, born: '1961-11-19'})
CREATE (DannyD:Person {name: 'Danny DeVito', tmdbID: 518, born: '1944-11-17'})
CREATE (JackN:Person {name: 'Jack Nicholson', tmdbID: 514, born: '1937-04-22'})
CREATE (SleeplessInSeattle:Movie {title: 'Sleepless in Seattle', tmdbID: 858, released: '1993-06-25', imdbRating: 6.8, genres: ['Comedy', 'Drama', 'Romance']})
CREATE (Hoffa:Movie {title: 'Hoffa', tmdbID: 10410, released: '1992-12-25', imdbRating: 6.6, genres: ['Crime', 'Drama']})


CREATE (n:Person {
    id: randomUUID(),
    name: 'Alice',
    email: 'alice@example.com'
})
RETURN n;

# Sources nodes
Fivetran
Salesforce
Marketo
BigQuery
Github
incidentio
Jira
pagerduty
DBT Cloud 
datadog
workramp
zendesk
Gainsight Customer Success
Coupa
Clari
Freshservice
Google Ads
mavenlink
linkedin_ads
twitter
youtube_analytics
Stripe
Stripe
instruqt
xactly
soundcloud
splash
TFC
TFC_EU
tf_registry_private
tf_registry_public
twitch
wistia
oomnitza
doormat
auth0_events
auth0
terraform_cloud
terraform_cloud_staging
license_service_ui
hcp billing Engine
Packer
Census
