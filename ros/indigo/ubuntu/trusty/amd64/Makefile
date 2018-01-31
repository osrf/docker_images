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
	@docker build --tag=amd64/ros:indigo-ros-core-trusty          ros-core/.
	@docker build --tag=amd64/ros:indigo-ros-base-trusty          ros-base/.
	@docker build --tag=amd64/ros:indigo-robot-trusty             robot/.
	@docker build --tag=amd64/ros:indigo-perception-trusty        perception/.
	# @docker build --tag=amd64/ros:indigo-desktop-trusty      desktop/.
	# @docker build --tag=amd64/ros:indigo-desktop-full-trusty desktop-full/.

pull:
	@docker pull amd64/ros:indigo-ros-core-trusty
	@docker pull amd64/ros:indigo-ros-base-trusty
	@docker pull amd64/ros:indigo-robot-trusty
	@docker pull amd64/ros:indigo-perception-trusty
	# @docker pull amd64/ros:indigo-desktop-trusty
	# @docker pull amd64/ros:indigo-desktop-full-trusty

clean:
	@docker rmi -f amd64/ros:indigo-ros-core-trusty
	@docker rmi -f amd64/ros:indigo-ros-base-trusty
	@docker rmi -f amd64/ros:indigo-robot-trusty
	@docker rmi -f amd64/ros:indigo-perception-trusty
	# @docker rmi -f amd64/ros:indigo-desktop-trusty
	# @docker rmi -f amd64/ros:indigo-desktop-full-trusty
