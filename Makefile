.PHONY: help setup server clean

PORT_HTTP := 8888

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	node_modules

server:
	npx --no-install http-server -a 0.0.0.0 -p $(PORT_HTTP) .

node_modules:
	npm install --dev

clean:
	rm -rf node_modules
