tf = terraform -chdir=.infra/terraform

local-db:
	docker-compose down ; docker-compose up -d ; sleep 2 ; flask db upgrade 

tf-init:
	$(tf) init

tf-validate:
	$(tf) validate

tf-plan:
	$(tf) plan

tf-format:
	$(tf) fmt -check