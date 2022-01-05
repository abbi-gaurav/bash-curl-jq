RELEASE?=0.0.1
DOCKER_ACCOUNT?=gabbi
IMG_REPO?=bash-curl-jq
CONTAINER_IMAGE?=${DOCKER_ACCOUNT}/${IMG_REPO}:${RELEASE}

.PHONY: build-image push-image

all: build-image push-image

build-image:
	docker build -t $(CONTAINER_IMAGE) --no-cache --rm .

push-image:
	docker push $(CONTAINER_IMAGE)