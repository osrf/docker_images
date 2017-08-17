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
	@docker build --tag=ros:indigo-ros-core-trusty          ros-core/.
	@docker build --tag=ros:indigo-ros-base-trusty          ros-base/.
	@docker build --tag=ros:indigo-robot-trusty             robot/.
	@docker build --tag=ros:indigo-perception-trusty        perception/.
	# @docker build --tag=osrf/ros:indigo-desktop-trusty      desktop/.
	# @docker build --tag=osrf/ros:indigo-desktop-full-trusty desktop-full/.

pull:
	@docker pull ros:indigo-ros-core-trusty
	@docker pull ros:indigo-ros-base-trusty
	@docker pull ros:indigo-robot-trusty
	@docker pull ros:indigo-perception-trusty
	# @docker pull osrf/ros:indigo-desktop-trusty
	# @docker pull osrf/ros:indigo-desktop-full-trusty

clean:
	@docker rmi -f ros:indigo-ros-core-trusty
	@docker rmi -f ros:indigo-ros-base-trusty
	@docker rmi -f ros:indigo-robot-trusty
	@docker rmi -f ros:indigo-perception-trusty
	# @docker rmi -f osrf/ros:indigo-desktop-trusty
	# @docker rmi -f osrf/ros:indigo-desktop-full-trusty
