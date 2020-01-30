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
	@docker build --tag=osrf/ros2:devel			devel/.
	# @docker build --tag=osrf/ros2:source			source/.

pull:
	@docker pull osrf/ros2:devel
	# @docker pull osrf/ros2:source

clean:
	@docker rmi -f osrf/ros2:devel
	# @docker rmi -f osrf/ros2:source
