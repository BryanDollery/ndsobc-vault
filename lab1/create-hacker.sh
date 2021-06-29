#!/bin/bash

export VAULT_ADDR=http://localhost:8200

user=hacker
pwd=hack
policy=hacker

echo "creating $user"
vault write auth/userpass/users/$user \
    password=$pwd \
    policies=$policy

echo "confirm"
curl \
    -sS \
    --request POST \
    --data "{\"password\": \"$pwd\"}" \
    http://127.0.0.1:8200/v1/auth/userpass/login/$user | jq

