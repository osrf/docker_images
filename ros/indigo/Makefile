all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   4. make clean            - remove all images"
	@echo "   2. make pull             - pull all images"
	@echo "   3. make push             - push all images"
	@echo "   4. make tag              - tag all images"
	@echo ""

build:
	@docker build --tag=ros:indigo-ros-core		indigo-ros-core/.
	@docker build --tag=ros:indigo-ros-base		indigo-ros-base/.
	@docker build --tag=ros:indigo-robot		indigo-robot/.
	@docker build --tag=ros:indigo-perception	indigo-perception/.
	@docker build --tag=ros:indigo-desktop		indigo-desktop/.
	@docker build --tag=ros:indigo-desktop-full	indigo-desktop-full/.

pull:
	@docker pull ros:indigo-ros-core
	@docker pull ros:indigo-ros-base
	@docker pull ros:indigo-robot
	@docker pull ros:indigo-perception
	@docker pull ros:indigo-desktop
	@docker pull ros:indigo-desktop-full

push:
	@docker push osrf/ros:indigo-ros-core
	@docker push osrf/ros:indigo-ros-base
	@docker push osrf/ros:indigo-robot
	@docker push osrf/ros:indigo-perception
	@docker push osrf/ros:indigo-desktop
	@docker push osrf/ros:indigo-desktop-full

clean:
	@docker rmi -f ros:indigo-ros-core
	@docker rmi -f ros:indigo-ros-base
	@docker rmi -f ros:indigo-robot
	@docker rmi -f ros:indigo-perception
	@docker rmi -f ros:indigo-desktop
	@docker rmi -f ros:indigo-desktop-full

tag:
	@docker tag -f ros:indigo-ros-core		osrf/ros:indigo-ros-core
	@docker tag -f ros:indigo-ros-base		osrf/ros:indigo-ros-base
	@docker tag -f ros:indigo-robot			osrf/ros:indigo-robot
	@docker tag -f ros:indigo-perception	osrf/ros:indigo-perception
	@docker tag -f ros:indigo-desktop		osrf/ros:indigo-desktop
	@docker tag -f ros:indigo-desktop-full	osrf/ros:indigo-desktop-full
