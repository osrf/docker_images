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
	@docker build --tag=ros:noetic-ros-core-focal          ros-core/.
	@docker build --tag=ros:noetic-ros-base-focal          ros-base/.
	@docker build --tag=ros:noetic-robot-focal             robot/.
	@docker build --tag=ros:noetic-perception-focal        perception/.

pull:
	@docker pull ros:noetic-ros-core-focal
	@docker pull ros:noetic-ros-base-focal
	@docker pull ros:noetic-robot-focal
	@docker pull ros:noetic-perception-focal

clean:
	@docker rmi -f ros:noetic-ros-core-focal
	@docker rmi -f ros:noetic-ros-base-focal
	@docker rmi -f ros:noetic-robot-focal
	@docker rmi -f ros:noetic-perception-focal
