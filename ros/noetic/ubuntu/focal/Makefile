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
	@docker build --tag=ros:noetic-ros-core-focal          ros-core/.
	@docker build --tag=ros:noetic-ros-base-focal          ros-base/.
	@docker build --tag=ros:noetic-robot-focal             robot/.
	@docker build --tag=ros:noetic-perception-focal        perception/.
	# @docker build --tag=osrf/ros:noetic-desktop-focal      desktop/.
	# @docker build --tag=osrf/ros:noetic-desktop-full-focal desktop-full/.

pull:
	@docker pull ros:noetic-ros-core-focal
	@docker pull ros:noetic-ros-base-focal
	@docker pull ros:noetic-robot-focal
	@docker pull ros:noetic-perception-focal
	# @docker pull osrf/ros:noetic-desktop-focal
	# @docker pull osrf/ros:noetic-desktop-full-focal

clean:
	@docker rmi -f ros:noetic-ros-core-focal
	@docker rmi -f ros:noetic-ros-base-focal
	@docker rmi -f ros:noetic-robot-focal
	@docker rmi -f ros:noetic-perception-focal
	# @docker rmi -f osrf/ros:noetic-desktop-focal
	# @docker rmi -f osrf/ros:noetic-desktop-full-focal

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:noetic-desktop-focal \
		--cache-to=type=inline \
		--tag=osrf/ros:noetic-desktop-focal \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:noetic-desktop-focal; \
		docker tag \
			osrf/ros:noetic-desktop-focal \
			osrf/ros:noetic-desktop; \
		docker push \
			osrf/ros:noetic-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:noetic-desktop-full-focal \
		--cache-to=type=inline \
		--tag=osrf/ros:noetic-desktop-full-focal \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:noetic-desktop-full-focal; \
		docker tag \
			osrf/ros:noetic-desktop-full-focal \
			osrf/ros:noetic-desktop-full; \
		docker push \
			osrf/ros:noetic-desktop-full; \
	fi
