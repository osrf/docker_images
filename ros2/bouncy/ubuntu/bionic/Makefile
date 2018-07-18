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
	@docker build --tag=osrf/ros2:bouncy-core			bouncy-core/.
	@docker build --tag=osrf/ros2:bouncy-basic			bouncy-basic/.
	@docker build --tag=osrf/ros2:bouncy-full			bouncy-full/.
	@docker build --tag=osrf/ros2:bouncy-ros1-bridge			bouncy-ros1-bridge/.

pull:
	@docker pull osrf/ros2:bouncy-core
	@docker pull osrf/ros2:bouncy-basic
	@docker pull osrf/ros2:bouncy-full
	@docker pull osrf/ros2:bouncy-ros1-bridge

clean:
	@docker rmi -f osrf/ros2:bouncy-core
	@docker rmi -f osrf/ros2:bouncy-basic
	@docker rmi -f osrf/ros2:bouncy-full
	@docker rmi -f osrf/ros2:bouncy-ros1-bridge
