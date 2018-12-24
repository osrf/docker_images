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
	@docker build --tag=osrf/ros2:ardent-ros-core-xenial			ros-core/.
	@docker build --tag=osrf/ros2:ardent-ros-base-xenial			ros-base/.
	@docker build --tag=osrf/ros2:ardent-desktop-xenial			desktop/.
	@docker build --tag=osrf/ros2:ardent-ros1-bridge-xenial			ros1-bridge/.

pull:
	@docker pull osrf/ros2:ardent-ros-core-xenial
	@docker pull osrf/ros2:ardent-ros-base-xenial
	@docker pull osrf/ros2:ardent-desktop-xenial
	@docker pull osrf/ros2:ardent-ros1-bridge-xenial

clean:
	@docker rmi -f osrf/ros2:ardent-ros-core-xenial
	@docker rmi -f osrf/ros2:ardent-ros-base-xenial
	@docker rmi -f osrf/ros2:ardent-desktop-xenial
	@docker rmi -f osrf/ros2:ardent-ros1-bridge-xenial
