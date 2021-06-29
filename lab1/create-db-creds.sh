#!/bin/bash

echo "As DB Owner, I'm writing a secret to vault"
vault kv put secret/db @./secret.json
