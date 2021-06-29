#!/bin/bash

echo "Getting db creds"
vault kv get -format=json secret/db | jq '.data.data'
