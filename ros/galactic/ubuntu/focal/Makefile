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
	@docker build --tag=ros:galactic-ros-core-focal			ros-core/.
	@docker build --tag=ros:galactic-ros-base-focal			ros-base/.
	@docker build --tag=ros:galactic-ros1-bridge-focal		ros1-bridge/.
	# @docker build --tag=osrf/ros:galactic-desktop-focal			desktop/.

pull:
	@docker pull ros:galactic-ros-core-focal
	@docker pull ros:galactic-ros-base-focal
	@docker pull ros:galactic-ros1-bridge-focal
	# @docker pull osrf/ros:galactic-desktop-focal

clean:
	@docker rmi -f ros:galactic-ros-core-focal
	@docker rmi -f ros:galactic-ros-base-focal
	@docker rmi -f ros:galactic-ros1-bridge-focal
	# @docker rmi -f osrf/ros:galactic-desktop-focal
