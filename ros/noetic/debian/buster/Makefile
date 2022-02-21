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
	@docker build --tag=ros:noetic-ros-core-buster          ros-core/.
	@docker build --tag=ros:noetic-ros-base-buster          ros-base/.
	@docker build --tag=ros:noetic-robot-buster             robot/.
	@docker build --tag=ros:noetic-perception-buster        perception/.
	# @docker build --tag=osrf/ros:noetic-desktop-buster      desktop/.
	# @docker build --tag=osrf/ros:noetic-desktop-full-buster desktop-full/.

pull:
	@docker pull ros:noetic-ros-core-buster
	@docker pull ros:noetic-ros-base-buster
	@docker pull ros:noetic-robot-buster
	@docker pull ros:noetic-perception-buster
	# @docker pull osrf/ros:noetic-desktop-buster
	# @docker pull osrf/ros:noetic-desktop-full-buster

clean:
	@docker rmi -f ros:noetic-ros-core-buster
	@docker rmi -f ros:noetic-ros-base-buster
	@docker rmi -f ros:noetic-robot-buster
	@docker rmi -f ros:noetic-perception-buster
	# @docker rmi -f osrf/ros:noetic-desktop-buster
	# @docker rmi -f osrf/ros:noetic-desktop-full-buster

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:noetic-desktop-buster \
		--cache-to=type=inline \
		--tag=osrf/ros:noetic-desktop-buster \
		desktop/.
	@if [ "debian" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:noetic-desktop-buster; \
		docker tag \
			osrf/ros:noetic-desktop-buster \
			osrf/ros:noetic-desktop; \
		docker push \
			osrf/ros:noetic-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:noetic-desktop-full-buster \
		--cache-to=type=inline \
		--tag=osrf/ros:noetic-desktop-full-buster \
		desktop-full/.
	@if [ "debian" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:noetic-desktop-full-buster; \
		docker tag \
			osrf/ros:noetic-desktop-full-buster \
			osrf/ros:noetic-desktop-full; \
		docker push \
			osrf/ros:noetic-desktop-full; \
	fi
