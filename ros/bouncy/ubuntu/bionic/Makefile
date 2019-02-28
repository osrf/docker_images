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
	@docker build --tag=ros:bouncy-ros-core-bionic			ros-core/.
	@docker build --tag=ros:bouncy-ros-base-bionic			ros-base/.
	# @docker build --tag=osrf/ros:bouncy-desktop-bionic			desktop/.
	# @docker build --tag=osrf/ros:bouncy-ros1-bridge-bionic			ros1-bridge/.

pull:
	@docker pull ros:bouncy-ros-core-bionic
	@docker pull ros:bouncy-ros-base-bionic
	# @docker pull osrf/ros:bouncy-desktop-bionic
	# @docker pull osrf/ros:bouncy-ros1-bridge-bionic

clean:
	@docker rmi -f ros:bouncy-ros-core-bionic
	@docker rmi -f ros:bouncy-ros-base-bionic
	# @docker rmi -f osrf/ros:bouncy-desktop-bionic
	# @docker rmi -f osrf/ros:bouncy-ros1-bridge-bionic
