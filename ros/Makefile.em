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
	@docker build --tag=ros:$release_name-ros-core          $release_name-ros-core/.
	@docker build --tag=ros:$release_name-ros-base          $release_name-ros-base/.
	@docker build --tag=ros:$release_name-robot             $release_name-robot/.
	@docker build --tag=ros:$release_name-perception        $release_name-perception/.
	@docker build --tag=osrf/ros:$release_name-desktop      $release_name-desktop/.
	@docker build --tag=osrf/ros:$release_name-desktop-full $release_name-desktop-full/.

pull:
	@docker pull ros:$release_name-ros-core
	@docker pull ros:$release_name-ros-base
	@docker pull ros:$release_name-robot
	@docker pull ros:$release_name-perception
	@docker pull osrf/ros:$release_name-desktop
	@docker pull osrf/ros:$release_name-desktop-full

clean:
	@docker rmi -f ros:$release_name-ros-core
	@docker rmi -f ros:$release_name-ros-base
	@docker rmi -f ros:$release_name-robot
	@docker rmi -f ros:$release_name-perception
	@docker rmi -f osrf/ros:$release_name-desktop
	@docker rmi -f osrf/ros:$release_name-desktop-full
