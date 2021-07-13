#!/bin/bash
echo "Initialising dynamic creds"

VAULT_ADDR=http://localhost:8200
vault login token=wibble

echo "enable db..."
vault secrets enable database
echo "db enabled"
echo "writing config/customers"
vault write database/config/customers \
    plugin_name=mongodb-database-plugin \
    allowed_roles="customer-agent" \
    connection_url="mongodb://{{username}}:{{password}}@mongo/?tls=false" \
    username="root" \
    password="root"
echo "config/customers written"
echo "writing roles"
vault write database/roles/customer-agent \
    db_name=customers \
    creation_statements='{ "db": "customers", "roles": [{ "role": "readWrite" }, {"role": "read", "db": "customers"}] }' \
    default_ttl="60s" \
    max_ttl="60s"
echo "roles written"
