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
	@docker build --tag=ros:lunar-ros-core          lunar-ros-core/.
	@docker build --tag=ros:lunar-ros-base          lunar-ros-base/.
	@docker build --tag=ros:lunar-robot             lunar-robot/.
	@docker build --tag=ros:lunar-perception        lunar-perception/.
	@docker build --tag=osrf/ros:lunar-desktop      lunar-desktop/.
	@docker build --tag=osrf/ros:lunar-desktop-full lunar-desktop-full/.

pull:
	@docker pull ros:lunar-ros-core
	@docker pull ros:lunar-ros-base
	@docker pull ros:lunar-robot
	@docker pull ros:lunar-perception
	@docker pull osrf/ros:lunar-desktop
	@docker pull osrf/ros:lunar-desktop-full

clean:
	@docker rmi -f ros:lunar-ros-core
	@docker rmi -f ros:lunar-ros-base
	@docker rmi -f ros:lunar-robot
	@docker rmi -f ros:lunar-perception
	@docker rmi -f osrf/ros:lunar-desktop
	@docker rmi -f osrf/ros:lunar-desktop-full
