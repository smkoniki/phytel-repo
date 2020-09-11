#!/bin/bash
echo "pre Docker build run code goes here"

sed "s|{FHIR_SERVER_DB2_API_KEY}|${FHIR_SERVER_DB2_API_KEY}|; s|{KAFKA_API_KEY}|${KAFKA_API_KEY}|" tenants/default/fhir-server-config.json  > fhir-server-config-default.tmp
cp fhir-server-config-default.tmp tenants/default/fhir-server-config.json
cat tenants/default/fhir-server-config.json

sed "s|{FHIR_SERVER_DB2_API_KEY}|${FHIR_SERVER_DB2_API_KEY}|; s|{ACME_TENANT_KEY}|${ACME_TENANT_KEY}|; s|{ACMETWO_TENANT_KEY}|${ACMETWO_TENANT_KEY}|; s|{KAFKA_API_KEY}|${KAFKA_API_KEY}|" tenants/acme/fhir-server-config.json  > fhir-server-configtwo-acme.tmp
cp fhir-server-configtwo-acme.tmp tenants/acme/fhir-server-config.json 
cat tenants/acme/fhir-server-config.json

sed "s|{FHIR_SERVER_DB2_API_KEY}|${FHIR_SERVER_DB2_API_KEY}|; s|{ACME_TENANT_KEY}|${ACME_TENANT_KEY}|; s|{ACMETWO_TENANT_KEY}|${ACMETWO_TENANT_KEY}|; s|{KAFKA_API_KEY}|${KAFKA_API_KEY}|" tenants/acmetwo/fhir-server-config.json  > fhir-server-configthree-acmetwo.tmp
cp fhir-server-configthree-acmetwo.tmp tenants/acmetwo/fhir-server-config.json
cat tenants/acmetwo/fhir-server-config.json

echo "in pre docker build"

echo "Pull Artifacts from JFrog"
bash pullArtifacts.sh
