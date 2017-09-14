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
	@docker build --tag=ros:fuerte-ros-precise          ros/.

pull:
	@docker pull ros:fuerte-ros-precise

clean:
	@docker rmi -f ros:fuerte-ros-precise
