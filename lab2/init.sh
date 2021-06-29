#!/bin/bash
echo "Initialising dynamic creds"

VAULT_ADDR=http://localhost:8200
vault login token=wibble

vault secrets enable database

vault write database/config/mongo \
    plugin_name=mongodb-database-plugin \
    allowed_roles="user-viewer" \
    connection_url="mongodb://mongo/admin" \
    username="root" \
    password="example"

vault write database/roles/user-viewer \
    db_name=mongo \
    creation_statements='{ "db": "admin", "roles": [{ "role": "readWrite" }, {"role": "read", "db": "foo"}] }' \
    default_ttl="1h" \
    max_ttl="24h"