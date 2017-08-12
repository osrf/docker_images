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
	@docker build --tag=ros:kinetic-ros-core          kinetic-ros-core/.
	@docker build --tag=ros:kinetic-ros-base          kinetic-ros-base/.
	@docker build --tag=ros:kinetic-robot             kinetic-robot/.
	@docker build --tag=ros:kinetic-perception        kinetic-perception/.
	@docker build --tag=osrf/ros:kinetic-desktop      kinetic-desktop/.
	@docker build --tag=osrf/ros:kinetic-desktop-full kinetic-desktop-full/.

pull:
	@docker pull ros:kinetic-ros-core
	@docker pull ros:kinetic-ros-base
	@docker pull ros:kinetic-robot
	@docker pull ros:kinetic-perception
	@docker pull osrf/ros:kinetic-desktop
	@docker pull osrf/ros:kinetic-desktop-full

clean:
	@docker rmi -f ros:kinetic-ros-core
	@docker rmi -f ros:kinetic-ros-base
	@docker rmi -f ros:kinetic-robot
	@docker rmi -f ros:kinetic-perception
	@docker rmi -f osrf/ros:kinetic-desktop
	@docker rmi -f osrf/ros:kinetic-desktop-full
