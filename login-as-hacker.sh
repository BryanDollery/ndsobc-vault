#!/bin/bash

echo "Logging in to vault as db owner"
vault login -method=userpass username=hacker password=hack

