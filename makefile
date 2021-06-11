tf = terraform -chdir=.infra/terraform

local-db:
	docker-compose down ; docker-compose up -d ; sleep 2 ; flask db upgrade 

tf-init:
	$(tf) init

tf-validate:
	$(tf) validate

tf-validate-no-color:
	$(tf) validate -no-color

tf-plan:
	$(tf) plan

tf-plan-no-color:
	$(tf) plan -no-color

tf-format:
	$(tf) fmt 

tf-apply:
	$(tf) apply

tf-apply-auto-approve:
	$(tf) apply -auto-approve 
