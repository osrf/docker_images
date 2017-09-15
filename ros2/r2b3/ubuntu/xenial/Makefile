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
	@docker build --tag=osrf/ros2:r2b2-core			r2b2-core/.
	@docker build --tag=osrf/ros2:r2b2-ros1-bridge	r2b2-ros1-bridge/.

pull:
	@docker pull osrf/ros2:r2b2-core
	@docker pull osrf/ros2:r2b2-ros1-bridge

clean:
	@docker rmi -f osrf/ros2:r2b2-core
	@docker rmi -f osrf/ros2:r2b2-ros1-bridge
