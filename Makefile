PWD := $(shell pwd)
SHELL := /bin/bash
IMAGE := "arm64"
VERSION := "1.0"
DOCKER_TAG="${IMAGE}:${VERSION}"

build:
	@docker build -t "${DOCKER_TAG}" -t "${IMAGE}:latest" . 

run:
	@docker run -v "${PWD}:/asm" -it ${DOCKER_TAG} bash
