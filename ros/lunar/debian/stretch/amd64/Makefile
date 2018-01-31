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
	@docker build --tag=amd64/ros:lunar-ros-core-stretch          ros-core/.
	@docker build --tag=amd64/ros:lunar-ros-base-stretch          ros-base/.
	@docker build --tag=amd64/ros:lunar-robot-stretch             robot/.
	@docker build --tag=amd64/ros:lunar-perception-stretch        perception/.
	# @docker build --tag=amd64/ros:lunar-desktop-stretch      desktop/.
	# @docker build --tag=amd64/ros:lunar-desktop-full-stretch desktop-full/.

pull:
	@docker pull amd64/ros:lunar-ros-core-stretch
	@docker pull amd64/ros:lunar-ros-base-stretch
	@docker pull amd64/ros:lunar-robot-stretch
	@docker pull amd64/ros:lunar-perception-stretch
	# @docker pull amd64/ros:lunar-desktop-stretch
	# @docker pull amd64/ros:lunar-desktop-full-stretch

clean:
	@docker rmi -f amd64/ros:lunar-ros-core-stretch
	@docker rmi -f amd64/ros:lunar-ros-base-stretch
	@docker rmi -f amd64/ros:lunar-robot-stretch
	@docker rmi -f amd64/ros:lunar-perception-stretch
	# @docker rmi -f amd64/ros:lunar-desktop-stretch
	# @docker rmi -f amd64/ros:lunar-desktop-full-stretch
