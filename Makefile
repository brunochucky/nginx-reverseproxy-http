.PHONY: build
ALPINE_VERSION := firstbuild

.PHONY: build pull run all

all: pull build run

build:
	docker build -t brunosou/reverse_proxy:${ALPINE_VERSION} .

pull:
	docker pull brunosou/reverse_proxy:${ALPINE_VERSION}