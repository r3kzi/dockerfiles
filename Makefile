.PHONY: kubectl helm logcli psql-client

kubectl:
	docker build --no-cache -t docker-kubectl:latest -t rekzi/docker-kubectl:latest kubectl/

helm:
	docker build --no-cache -t docker-helm:latest -t rekzi/docker-helm:latest helm/

logcli:
	docker build --no-cache -t logcli:latest -t rekzi/logcli:latest logcli/

psql-client:
	docker build --no-cache -t psql-client:latest -t rekzi/psql-client:latest psql-client/