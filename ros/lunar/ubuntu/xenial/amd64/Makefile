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
	@docker build --tag=ros:lunar-ros-core-xenial          ros-core/.
	@docker build --tag=ros:lunar-ros-base-xenial          ros-base/.
	@docker build --tag=ros:lunar-robot-xenial             robot/.
	@docker build --tag=ros:lunar-perception-xenial        perception/.
	# @docker build --tag=osrf/ros:lunar-desktop-xenial      desktop/.
	# @docker build --tag=osrf/ros:lunar-desktop-full-xenial desktop-full/.

pull:
	@docker pull ros:lunar-ros-core-xenial
	@docker pull ros:lunar-ros-base-xenial
	@docker pull ros:lunar-robot-xenial
	@docker pull ros:lunar-perception-xenial
	# @docker pull osrf/ros:lunar-desktop-xenial
	# @docker pull osrf/ros:lunar-desktop-full-xenial

clean:
	@docker rmi -f ros:lunar-ros-core-xenial
	@docker rmi -f ros:lunar-ros-base-xenial
	@docker rmi -f ros:lunar-robot-xenial
	@docker rmi -f ros:lunar-perception-xenial
	# @docker rmi -f osrf/ros:lunar-desktop-xenial
	# @docker rmi -f osrf/ros:lunar-desktop-full-xenial
