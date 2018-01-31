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
	@docker build --tag=ros:diamondback-ros-lucid          ros/.

pull:
	@docker pull ros:diamondback-ros-lucid

clean:
	@docker rmi -f ros:diamondback-ros-lucid
