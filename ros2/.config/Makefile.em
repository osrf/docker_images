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
	@docker build --tag=osrf/ros2:$release_name-core			$release_name-core/.
	@docker build --tag=osrf/ros2:$release_name-basic			$release_name-basic/.
	@docker build --tag=osrf/ros2:$release_name-full			$release_name-full/.
	@docker build --tag=osrf/ros2:$release_name-ros1-bridge			$release_name-ros1-bridge/.

pull:
	@docker pull osrf/ros2:$release_name-core
	@docker pull osrf/ros2:$release_name-basic
	@docker pull osrf/ros2:$release_name-full
	@docker pull osrf/ros2:$release_name-ros1-bridge

clean:
	@docker rmi -f osrf/ros2:$release_name-core
	@docker rmi -f osrf/ros2:$release_name-basic
	@docker rmi -f osrf/ros2:$release_name-full
	@docker rmi -f osrf/ros2:$release_name-ros1-bridge
