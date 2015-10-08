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
	@docker build --tag=ros:jade-ros-core          jade-ros-core/.
	@docker build --tag=ros:jade-ros-base          jade-ros-base/.
	@docker build --tag=ros:jade-robot             jade-robot/.
	@docker build --tag=ros:jade-perception        jade-perception/.
	@docker build --tag=osrf/ros:jade-desktop      jade-desktop/.
	@docker build --tag=osrf/ros:jade-desktop-full jade-desktop-full/.

pull:
	@docker pull ros:jade-ros-core
	@docker pull ros:jade-ros-base
	@docker pull ros:jade-robot
	@docker pull ros:jade-perception
	@docker pull osrf/ros:jade-desktop
	@docker pull osrf/ros:jade-desktop-full

clean:
	@docker rmi -f ros:jade-ros-core
	@docker rmi -f ros:jade-ros-base
	@docker rmi -f ros:jade-robot
	@docker rmi -f ros:jade-perception
	@docker rmi -f osrf/ros:jade-desktop
	@docker rmi -f osrf/ros:jade-desktop-full
