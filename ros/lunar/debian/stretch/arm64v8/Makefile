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
	@docker build --tag=arm64v8/ros:lunar-ros-core-stretch          ros-core/.
	@docker build --tag=arm64v8/ros:lunar-ros-base-stretch          ros-base/.
	@docker build --tag=arm64v8/ros:lunar-robot-stretch             robot/.
	@docker build --tag=arm64v8/ros:lunar-perception-stretch        perception/.
	# @docker build --tag=arm64v8/ros:lunar-desktop-stretch      desktop/.
	# @docker build --tag=arm64v8/ros:lunar-desktop-full-stretch desktop-full/.

pull:
	@docker pull arm64v8/ros:lunar-ros-core-stretch
	@docker pull arm64v8/ros:lunar-ros-base-stretch
	@docker pull arm64v8/ros:lunar-robot-stretch
	@docker pull arm64v8/ros:lunar-perception-stretch
	# @docker pull arm64v8/ros:lunar-desktop-stretch
	# @docker pull arm64v8/ros:lunar-desktop-full-stretch

clean:
	@docker rmi -f arm64v8/ros:lunar-ros-core-stretch
	@docker rmi -f arm64v8/ros:lunar-ros-base-stretch
	@docker rmi -f arm64v8/ros:lunar-robot-stretch
	@docker rmi -f arm64v8/ros:lunar-perception-stretch
	# @docker rmi -f arm64v8/ros:lunar-desktop-stretch
	# @docker rmi -f arm64v8/ros:lunar-desktop-full-stretch
