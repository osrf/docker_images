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
	@docker build --tag=ros:kinetic-ros-core-jessie          ros-core/.
	@docker build --tag=ros:kinetic-ros-base-jessie          ros-base/.
	@docker build --tag=ros:kinetic-robot-jessie             robot/.
	@docker build --tag=ros:kinetic-perception-jessie        perception/.
	# @docker build --tag=osrf/ros:kinetic-desktop-jessie      desktop/.
	# @docker build --tag=osrf/ros:kinetic-desktop-full-jessie desktop-full/.

pull:
	@docker pull ros:kinetic-ros-core-jessie
	@docker pull ros:kinetic-ros-base-jessie
	@docker pull ros:kinetic-robot-jessie
	@docker pull ros:kinetic-perception-jessie
	# @docker pull osrf/ros:kinetic-desktop-jessie
	# @docker pull osrf/ros:kinetic-desktop-full-jessie

clean:
	@docker rmi -f ros:kinetic-ros-core-jessie
	@docker rmi -f ros:kinetic-ros-base-jessie
	@docker rmi -f ros:kinetic-robot-jessie
	@docker rmi -f ros:kinetic-perception-jessie
	# @docker rmi -f osrf/ros:kinetic-desktop-jessie
	# @docker rmi -f osrf/ros:kinetic-desktop-full-jessie
