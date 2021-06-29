#!/bin/bash

echo "Making db creds"
vault kv put secret/db @./secret.json

