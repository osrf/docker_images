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
	@docker build --tag=ros:kinetic-ros-core-xenial          ros-core/.
	@docker build --tag=ros:kinetic-ros-base-xenial          ros-base/.
	@docker build --tag=ros:kinetic-robot-xenial             robot/.
	@docker build --tag=ros:kinetic-perception-xenial        perception/.
	# @docker build --tag=osrf/ros:kinetic-desktop-xenial      desktop/.
	# @docker build --tag=osrf/ros:kinetic-desktop-full-xenial desktop-full/.

pull:
	@docker pull ros:kinetic-ros-core-xenial
	@docker pull ros:kinetic-ros-base-xenial
	@docker pull ros:kinetic-robot-xenial
	@docker pull ros:kinetic-perception-xenial
	# @docker pull osrf/ros:kinetic-desktop-xenial
	# @docker pull osrf/ros:kinetic-desktop-full-xenial

clean:
	@docker rmi -f ros:kinetic-ros-core-xenial
	@docker rmi -f ros:kinetic-ros-base-xenial
	@docker rmi -f ros:kinetic-robot-xenial
	@docker rmi -f ros:kinetic-perception-xenial
	# @docker rmi -f osrf/ros:kinetic-desktop-xenial
	# @docker rmi -f osrf/ros:kinetic-desktop-full-xenial
