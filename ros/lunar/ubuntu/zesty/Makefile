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
	@docker build --tag=ros:lunar-ros-core-zesty          ros-core/.
	@docker build --tag=ros:lunar-ros-base-zesty          ros-base/.
	@docker build --tag=ros:lunar-robot-zesty             robot/.
	@docker build --tag=ros:lunar-perception-zesty        perception/.
	# @docker build --tag=osrf/ros:lunar-desktop-zesty      desktop/.
	# @docker build --tag=osrf/ros:lunar-desktop-full-zesty desktop-full/.

pull:
	@docker pull ros:lunar-ros-core-zesty
	@docker pull ros:lunar-ros-base-zesty
	@docker pull ros:lunar-robot-zesty
	@docker pull ros:lunar-perception-zesty
	# @docker pull osrf/ros:lunar-desktop-zesty
	# @docker pull osrf/ros:lunar-desktop-full-zesty

clean:
	@docker rmi -f ros:lunar-ros-core-zesty
	@docker rmi -f ros:lunar-ros-base-zesty
	@docker rmi -f ros:lunar-robot-zesty
	@docker rmi -f ros:lunar-perception-zesty
	# @docker rmi -f osrf/ros:lunar-desktop-zesty
	# @docker rmi -f osrf/ros:lunar-desktop-full-zesty
