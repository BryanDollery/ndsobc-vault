
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

prep:
	@./login-as-root.sh
	@./create-policies.sh
	@./enable-userpass.sh
	@./create-hacker.sh
	@./create-db-owner.sh
	@./create-db-consumer.sh
	@./create-db-creds.sh
	@./get-db-creds.sh
	@./create-policies.sh

consume:
	@./login-as-db-consumer.sh
	@./get-db-creds.sh
	
