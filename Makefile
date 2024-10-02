# Makefile

IMAGE_NAME = security-hardened-app
TAG = latest

build:
	docker build -t $(IMAGE_NAME):$(TAG) .

push:
	docker push $(IMAGE_NAME):$(TAG)

deploy:
	kubectl apply -f manifests/base/

clean:
	kubectl delete -f manifests/base/
