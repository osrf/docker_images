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
	@docker build --tag=ros:melodic-ros-core-bionic          ros-core/.
	@docker build --tag=ros:melodic-ros-base-bionic          ros-base/.
	@docker build --tag=ros:melodic-robot-bionic             robot/.
	@docker build --tag=ros:melodic-perception-bionic        perception/.
	# @docker build --tag=osrf/ros:melodic-desktop-bionic      desktop/.
	# @docker build --tag=osrf/ros:melodic-desktop-full-bionic desktop-full/.

pull:
	@docker pull ros:melodic-ros-core-bionic
	@docker pull ros:melodic-ros-base-bionic
	@docker pull ros:melodic-robot-bionic
	@docker pull ros:melodic-perception-bionic
	# @docker pull osrf/ros:melodic-desktop-bionic
	# @docker pull osrf/ros:melodic-desktop-full-bionic

clean:
	@docker rmi -f ros:melodic-ros-core-bionic
	@docker rmi -f ros:melodic-ros-base-bionic
	@docker rmi -f ros:melodic-robot-bionic
	@docker rmi -f ros:melodic-perception-bionic
	# @docker rmi -f osrf/ros:melodic-desktop-bionic
	# @docker rmi -f osrf/ros:melodic-desktop-full-bionic
