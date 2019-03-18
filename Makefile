.PHONY: kubectl helm

kubectl:
	docker build --no-cache -t docker-kubectl:latest -t rekzi/docker-kubectl:latest kubectl/

helm:
	docker build --no-cache -t docker-helm:latest -t rekzi/docker-helm:latest helm/