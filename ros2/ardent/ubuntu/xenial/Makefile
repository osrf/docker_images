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
	@docker build --tag=osrf/ros2:ardent-core			ardent-core/.
	@docker build --tag=osrf/ros2:ardent-basic			ardent-basic/.
	@docker build --tag=osrf/ros2:ardent-full			ardent-full/.
	@docker build --tag=osrf/ros2:ardent-ros1-bridge			ardent-ros1-bridge/.

pull:
	@docker pull osrf/ros2:ardent-core
	@docker pull osrf/ros2:ardent-basic
	@docker pull osrf/ros2:ardent-full
	@docker pull osrf/ros2:ardent-ros1-bridge

clean:
	@docker rmi -f osrf/ros2:ardent-core
	@docker rmi -f osrf/ros2:ardent-basic
	@docker rmi -f osrf/ros2:ardent-full
	@docker rmi -f osrf/ros2:ardent-ros1-bridge
