all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   3. make rmi              - remove all images"
	@echo ""

build:
	@docker build --tag=osrf:docker .

rmi:
	@docker rmi -f osrf:docker
