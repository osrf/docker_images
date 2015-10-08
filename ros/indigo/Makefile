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
	@docker build --tag=ros:indigo-ros-core          indigo-ros-core/.
	@docker build --tag=ros:indigo-ros-base          indigo-ros-base/.
	@docker build --tag=ros:indigo-robot             indigo-robot/.
	@docker build --tag=ros:indigo-perception        indigo-perception/.
	@docker build --tag=osrf/ros:indigo-desktop      indigo-desktop/.
	@docker build --tag=osrf/ros:indigo-desktop-full indigo-desktop-full/.

pull:
	@docker pull ros:indigo-ros-core
	@docker pull ros:indigo-ros-base
	@docker pull ros:indigo-robot
	@docker pull ros:indigo-perception
	@docker pull osrf/ros:indigo-desktop
	@docker pull osrf/ros:indigo-desktop-full

clean:
	@docker rmi -f ros:indigo-ros-core
	@docker rmi -f ros:indigo-ros-base
	@docker rmi -f ros:indigo-robot
	@docker rmi -f ros:indigo-perception
	@docker rmi -f osrf/ros:indigo-desktop
	@docker rmi -f osrf/ros:indigo-desktop-full
