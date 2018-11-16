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
	@docker build --tag=osrf/ros2:bouncy-ros-core-bionic			ros-core/.
	@docker build --tag=osrf/ros2:bouncy-ros-base-bionic			ros-base/.
	@docker build --tag=osrf/ros2:bouncy-desktop-bionic			desktop/.
	@docker build --tag=osrf/ros2:bouncy-ros1-bridge-bionic			ros1-bridge/.

pull:
	@docker pull osrf/ros2:bouncy-ros-core-bionic
	@docker pull osrf/ros2:bouncy-ros-base-bionic
	@docker pull osrf/ros2:bouncy-desktop-bionic
	@docker pull osrf/ros2:bouncy-ros1-bridge-bionic

clean:
	@docker rmi -f osrf/ros2:bouncy-ros-core-bionic
	@docker rmi -f osrf/ros2:bouncy-ros-base-bionic
	@docker rmi -f osrf/ros2:bouncy-desktop-bionic
	@docker rmi -f osrf/ros2:bouncy-ros1-bridge-bionic
