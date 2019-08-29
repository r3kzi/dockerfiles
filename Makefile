.PHONY: kubectl helm logcli psql-client busybox-curl

kubectl:
	docker build --no-cache -t docker-kubectl:latest -t rekzi/docker-kubectl:latest kubectl/

helm:
	docker build --no-cache -t rekzi/helm:latest -t rekzi/helm:2.14.3 helm/

logcli:
	docker build --no-cache -t logcli:latest -t rekzi/logcli:latest logcli/

psql-client:
	docker build --no-cache -t psql-client:latest -t rekzi/psql-client:latest psql-client/

busybox-curl:
	docker build -t busybox-curl:latest -t rekzi/busybox-curl:latest -t busybox-curl:7.65.3 -t rekzi/busybox-curl:7.65.3 busybox-curl/