GO111MODULE := on
DOCKER_TAG := $(or ${GIT_TAG_NAME}, latest)


.PHONY: dockerimages
dockerimages:
	docker build -t mwennrich/cluster-shell:${DOCKER_TAG} .

.PHONY: dockerpush
dockerpush:
	docker push mwennrich/cluster-shell:${DOCKER_TAG}

.PHONY: clean
clean:
	rm -f bin/*
