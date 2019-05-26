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
	@docker build --tag=ros:dashing-ros-core-bionic			ros-core/.
	@docker build --tag=ros:dashing-ros-base-bionic			ros-base/.
	# @docker build --tag=osrf/ros:dashing-desktop-bionic			desktop/.
	# @docker build --tag=osrf/ros:dashing-ros1-bridge-bionic			ros1-bridge/.

pull:
	@docker pull ros:dashing-ros-core-bionic
	@docker pull ros:dashing-ros-base-bionic
	# @docker pull osrf/ros:dashing-desktop-bionic
	# @docker pull osrf/ros:dashing-ros1-bridge-bionic

clean:
	@docker rmi -f ros:dashing-ros-core-bionic
	@docker rmi -f ros:dashing-ros-base-bionic
	# @docker rmi -f osrf/ros:dashing-desktop-bionic
	# @docker rmi -f osrf/ros:dashing-ros1-bridge-bionic
