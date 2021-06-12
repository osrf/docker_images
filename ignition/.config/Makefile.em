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
	@docker build --tag=ignition:$release_name-$os_code_name	ignition/.

pull:
	@docker pull ignition:$release_name-$os_code_name

clean:
	@docker rmi -f ignition:$release_name-$os_code_name
