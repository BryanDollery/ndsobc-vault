#!/bin/bash

echo "Logging in to vault as consumer"
vault login -method=userpass username=dbconsumer password=foo
