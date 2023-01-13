#!make

help:
	$(info Use one of the following make targets:)
	@awk -F: '/^[A-z\-_]+:/ {print "  - " $$1}' Makefile

include .env
export $(shell sed 's/=.*//' .env)

TIMESTAMP=$(shell date +%s)
CURRENT_GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

# Directories
ASSETS := ${PWD}/assets

# Git
TIMESTAMP=$(shell date +%s)
CURRENT_GIT_BRANCH := $(shell git rev-parse --abbrev-ref HEAD)

# Project dependencies
DOCKER := $(shell command -v docker)
DOCKER_COMPOSE := $(shell command -v docker-compose)
deps:
ifndef DOCKER
	@echo "Docker is not available. Please install docker"
	@make install_docker
	@exit 1
endif
ifndef DOCKER_COMPOSE
	@echo "docker-compose is not available. Please install docker-compose"
    # docker-compose.yml support
    # https://docs.docker.com/compose/install/linux/#install-using-the-repository
    sudo apt-get install docker-compose-plugin
    # sudo apt install docker-compose -y
	@exit 1
endif

# Dialogs

confirm:
	@bash scripts/bash/confirmation.sh

exit_on:
	@bash scripts/bash/exit_on_non_development.sh

# Local environment

install_docker: confirm
	@bash scripts/bash/install_docker.sh

install_monitor: confirm
	@bash scripts/bash/install_lazydocker.sh

# Docker

start: deps
	docker compose -f docker/docker-compose.yml start

stop:
	docker compose -f docker/docker-compose.yml stop

up: deps
	docker compose -f docker/docker-compose.yml up -d

down:
	docker compose -f docker/docker-compose.yml down

recreate:
	docker compose -f docker/docker-compose.yml up -d --force-recreate

connect:
	docker exec -it hugo /bin/sh

.vault:
	docker run -w $(pwd) -v $(pwd):$(pwd) -it dotenv/dotenv-vault help

# Ops

monitor:
	lazydocker

# Hugo CLI

hugo_deps:
	docker exec -it hugo sh -c "hugo env -v"

# Asset management / CDN

sync_cdn:
	ASSETS=${ASSETS} bash scripts/sync_imagekit.sh

# Submodule

theme_init:
	git submodule init --re

theme_update:
	git submodule update --remote --init --recursive

# Support pages

help_markdown:
	xdg-open https://gohugo.io/content-management/front-matter/

help_images:
	xdg-open https://docs.imagekit.io/

help_language:
	xdg-open https://gohugo.io/functions/i18n/

help_theme:
	xdg-open https://stack.jimmycai.com/

page_category:
	xdg-open http://localhost:1313/categories/
