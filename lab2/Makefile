
cycle: down up

up:
	@docker run --name vault \
  	-it -d \
    -p 8200:8200 \
    --cap-add=IPC_LOCK \
    -e VAULT_DEV_ROOT_TOKEN_ID=wibble \
    -e VAULT_ADDR=http://localhost:8200 \
    -e VAULT_TOKEN=wibble \
    -e VAULT_FORMAT=json \
    -w /work \
    -v $$(pwd):/work \
    vault
	@echo "Don't forget to source the env"

down:
	@docker rm -f $$(docker ps -qa)

	
