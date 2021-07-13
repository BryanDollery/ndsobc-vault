all: down up

up:
	@docker-compose up -d

down:
	@docker-compose down

logs:
	@docker-compose logs -f

debug:
	@docker-compose logs -f debug

clean:
	@docker rm -f $$(docker ps -aq)
	
init:
	@./init.sh

gen:
	@vault read database/creds/customer-agent
