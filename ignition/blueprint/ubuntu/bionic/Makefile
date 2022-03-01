all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   2. make pull             - pull all images"
	@echo "   3. make clean            - remove all images"
	@echo ""

build:
	@docker build --tag=ignition:blueprint-bionic	ignition/.

pull:
	@docker pull ignition:blueprint-bionic

clean:
	@docker rmi -f ignition:blueprint-bionic
