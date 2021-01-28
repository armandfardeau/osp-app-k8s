REGISTRY := rg.fr-par.scw.cloud
NAMESPACE := decidim
VERSION := latest
IMAGE_NAME := osp-decidim
TAG := $(REGISTRY)/$(NAMESPACE)/$(IMAGE_NAME):$(VERSION)

login:
	docker login $(REGISTRY) -u nologin -p $(SCW_SECRET_TOKEN)

build:
	 docker build .  --compress -t $(TAG)

push:
	docker push $(TAG)

release:
	@make build
	@make push
