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
	@docker build --tag=osrf/ros2:$release_name-ros-core			$release_name-ros-core/.
	@docker build --tag=osrf/ros2:$release_name-ros-base			$release_name-ros-base/.
	@docker build --tag=osrf/ros2:$release_name-desktop				$release_name-desktop/.
	@docker build --tag=osrf/ros2:$release_name-ros1-bridge		$release_name-ros1-bridge/.

pull:
	@docker pull osrf/ros2:$release_name-ros-core
	@docker pull osrf/ros2:$release_name-ros-base
	@docker pull osrf/ros2:$release_name-desktop
	@docker pull osrf/ros2:$release_name-ros1-bridge

clean:
	@docker rmi -f osrf/ros2:$release_name-ros-core
	@docker rmi -f osrf/ros2:$release_name-ros-base
	@docker rmi -f osrf/ros2:$release_name-desktop
	@docker rmi -f osrf/ros2:$release_name-ros1-bridge
