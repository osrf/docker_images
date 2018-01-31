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
	@docker build --tag=arm64v8/ros:kinetic-ros-core-jessie          ros-core/.
	@docker build --tag=arm64v8/ros:kinetic-ros-base-jessie          ros-base/.
	@docker build --tag=arm64v8/ros:kinetic-robot-jessie             robot/.
	@docker build --tag=arm64v8/ros:kinetic-perception-jessie        perception/.
	# @docker build --tag=arm64v8/ros:kinetic-desktop-jessie      desktop/.
	# @docker build --tag=arm64v8/ros:kinetic-desktop-full-jessie desktop-full/.

pull:
	@docker pull arm64v8/ros:kinetic-ros-core-jessie
	@docker pull arm64v8/ros:kinetic-ros-base-jessie
	@docker pull arm64v8/ros:kinetic-robot-jessie
	@docker pull arm64v8/ros:kinetic-perception-jessie
	# @docker pull arm64v8/ros:kinetic-desktop-jessie
	# @docker pull arm64v8/ros:kinetic-desktop-full-jessie

clean:
	@docker rmi -f arm64v8/ros:kinetic-ros-core-jessie
	@docker rmi -f arm64v8/ros:kinetic-ros-base-jessie
	@docker rmi -f arm64v8/ros:kinetic-robot-jessie
	@docker rmi -f arm64v8/ros:kinetic-perception-jessie
	# @docker rmi -f arm64v8/ros:kinetic-desktop-jessie
	# @docker rmi -f arm64v8/ros:kinetic-desktop-full-jessie
