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
	@docker build --tag=ros:$release_name-ros-core-$os_code_name          ros-core/.
	@docker build --tag=ros:$release_name-ros-base-$os_code_name          ros-base/.
	@docker build --tag=ros:$release_name-robot-$os_code_name             robot/.
	@docker build --tag=ros:$release_name-perception-$os_code_name        perception/.
	# @docker build --tag=osrf/ros:$release_name-desktop-$os_code_name      desktop/.
	# @docker build --tag=osrf/ros:$release_name-desktop-full-$os_code_name desktop-full/.

pull:
	@docker pull ros:$release_name-ros-core-$os_code_name
	@docker pull ros:$release_name-ros-base-$os_code_name
	@docker pull ros:$release_name-robot-$os_code_name
	@docker pull ros:$release_name-perception-$os_code_name
	# @docker pull osrf/ros:$release_name-desktop-$os_code_name
	# @docker pull osrf/ros:$release_name-desktop-full-$os_code_name

clean:
	@docker rmi -f ros:$release_name-ros-core-$os_code_name
	@docker rmi -f ros:$release_name-ros-base-$os_code_name
	@docker rmi -f ros:$release_name-robot-$os_code_name
	@docker rmi -f ros:$release_name-perception-$os_code_name
	# @docker rmi -f osrf/ros:$release_name-desktop-$os_code_name
	# @docker rmi -f osrf/ros:$release_name-desktop-full-$os_code_name
