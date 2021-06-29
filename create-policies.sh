#!/bin/bash

echo "creating policies"
vault policy write db-consumer db-consumer-policy.hcl
vault policy write db-owner db-owner-policy.hcl

