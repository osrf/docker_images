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
	@docker build --tag=ros:jade-ros-core-trusty          ros-core/.
	@docker build --tag=ros:jade-ros-base-trusty          ros-base/.
	@docker build --tag=ros:jade-robot-trusty             robot/.
	@docker build --tag=ros:jade-perception-trusty        perception/.
	# @docker build --tag=osrf/ros:jade-desktop-trusty      desktop/.
	# @docker build --tag=osrf/ros:jade-desktop-full-trusty desktop-full/.

pull:
	@docker pull ros:jade-ros-core-trusty
	@docker pull ros:jade-ros-base-trusty
	@docker pull ros:jade-robot-trusty
	@docker pull ros:jade-perception-trusty
	# @docker pull osrf/ros:jade-desktop-trusty
	# @docker pull osrf/ros:jade-desktop-full-trusty

clean:
	@docker rmi -f ros:jade-ros-core-trusty
	@docker rmi -f ros:jade-ros-base-trusty
	@docker rmi -f ros:jade-robot-trusty
	@docker rmi -f ros:jade-perception-trusty
	# @docker rmi -f osrf/ros:jade-desktop-trusty
	# @docker rmi -f osrf/ros:jade-desktop-full-trusty
