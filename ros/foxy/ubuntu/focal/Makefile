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
	@docker build --tag=ros:foxy-ros-core-focal			ros-core/.
	@docker build --tag=ros:foxy-ros-base-focal			ros-base/.
	# @docker build --tag=osrf/ros:foxy-desktop-focal			desktop/.
	# @docker build --tag=osrf/ros:foxy-ros1-bridge-focal			ros1-bridge/.

pull:
	@docker pull ros:foxy-ros-core-focal
	@docker pull ros:foxy-ros-base-focal
	# @docker pull osrf/ros:foxy-desktop-focal
	# @docker pull osrf/ros:foxy-ros1-bridge-focal

clean:
	@docker rmi -f ros:foxy-ros-core-focal
	@docker rmi -f ros:foxy-ros-base-focal
	# @docker rmi -f osrf/ros:foxy-desktop-focal
	# @docker rmi -f osrf/ros:foxy-ros1-bridge-focal
