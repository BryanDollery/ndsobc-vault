# Hashicorp Vault 
## Introduction for the Nairobi Dev Sec Ops Bootcamp

Hashicorp vault stands alone at the pinacle of secrets management tools with no competition. Once you've learned how this works you'll only ever judge other secrets management tools as severely flawwed.


This repo contains a Makefile that will help configure a basic demo of secret ownership and consumption. Start by sourcing the env script (`. ./env.sh`), then run `make vault` to start vault, followed by `make create` to create all the assets for the workshop. You can then use the login-as scripts to change who you're logged in as and try to get the secret.
