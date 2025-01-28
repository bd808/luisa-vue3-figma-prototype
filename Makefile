# Copyright 2025, Wikimedia Foundation and contributors.
#
# This file is part of Luisa Vue3 Figma prototype POC
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.

# Prefer Compose v2, but allow override on hosts that only have v1
COMPOSE ?= docker compose

help:
	@echo "Make targets:"
	@echo "============="
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(firstword $(MAKEFILE_LIST)) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "%-20s %s\n", $$1, $$2}'
.PHONY: help

start: .env  ## Start the docker-compose stack
	DOCKER_DEFAULT_PLATFORM=linux/amd64 $(COMPOSE) up --build --detach
.PHONY: start

stop:  ## Stop the docker-compose stack
	$(COMPOSE) stop
.PHONY: stop

restart: stop start  ## Restart the docker-compose stack
.PHONY: restart

status:  ## Show status of the docker-compose stack
	$(COMPOSE) ps
.PHONY: status

shell:  ## Get an interactive shell inside the nodejs container
	$(COMPOSE) exec nodejs bash
.PHONY: nodejs-shell

tail:  ## Tail logs from the docker-compose stack
	$(COMPOSE) logs --follow
.PHONY: tail

test: test-nodejs-lint test-nodejs-unit
.PHONY: test

test-nodejs-lint:  ## Run linter checks for nodejs code
	@echo "== Lint Nodejs =="
	$(COMPOSE) exec nodejs sh -c " \
		export HOME=/tmp/runtime-home; \
		npm run-script lint \
	"
.PHONY: test-nodejs-lint

test-nodejs-unit:  ## Run unit tests for nodejs code
	@echo "== Test Nodejs =="
	$(COMPOSE) exec nodejs sh -c " \
		export HOME=/tmp/runtime-home; \
		npm run-script unit \
	"
.PHONY: test-nodejs-unit

format-code:  ## Reformat JS files
	$(COMPOSE) exec nodejs npm run-script format
.PHONY: format-code

.env:  ## Generate a .env file for local development
	./bin/make_env.sh ./.env
