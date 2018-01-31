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
	@docker build --tag=amd64/ros:lunar-ros-core-xenial          ros-core/.
	@docker build --tag=amd64/ros:lunar-ros-base-xenial          ros-base/.
	@docker build --tag=amd64/ros:lunar-robot-xenial             robot/.
	@docker build --tag=amd64/ros:lunar-perception-xenial        perception/.
	# @docker build --tag=amd64/ros:lunar-desktop-xenial      desktop/.
	# @docker build --tag=amd64/ros:lunar-desktop-full-xenial desktop-full/.

pull:
	@docker pull amd64/ros:lunar-ros-core-xenial
	@docker pull amd64/ros:lunar-ros-base-xenial
	@docker pull amd64/ros:lunar-robot-xenial
	@docker pull amd64/ros:lunar-perception-xenial
	# @docker pull amd64/ros:lunar-desktop-xenial
	# @docker pull amd64/ros:lunar-desktop-full-xenial

clean:
	@docker rmi -f amd64/ros:lunar-ros-core-xenial
	@docker rmi -f amd64/ros:lunar-ros-base-xenial
	@docker rmi -f amd64/ros:lunar-robot-xenial
	@docker rmi -f amd64/ros:lunar-perception-xenial
	# @docker rmi -f amd64/ros:lunar-desktop-xenial
	# @docker rmi -f amd64/ros:lunar-desktop-full-xenial
