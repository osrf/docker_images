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
	@docker build --tag=osrf/ros2:crystal-ros-core-bionic			ros-core/.
	@docker build --tag=osrf/ros2:crystal-ros-base-bionic			ros-base/.
	@docker build --tag=osrf/ros2:crystal-desktop-bionic			desktop/.
	@docker build --tag=osrf/ros2:crystal-ros1-bridge-bionic			ros1-bridge/.

pull:
	@docker pull osrf/ros2:crystal-ros-core-bionic
	@docker pull osrf/ros2:crystal-ros-base-bionic
	@docker pull osrf/ros2:crystal-desktop-bionic
	@docker pull osrf/ros2:crystal-ros1-bridge-bionic

clean:
	@docker rmi -f osrf/ros2:crystal-ros-core-bionic
	@docker rmi -f osrf/ros2:crystal-ros-base-bionic
	@docker rmi -f osrf/ros2:crystal-desktop-bionic
	@docker rmi -f osrf/ros2:crystal-ros1-bridge-bionic
