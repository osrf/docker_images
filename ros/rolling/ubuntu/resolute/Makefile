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
	@docker build --tag=ros:rolling-ros-core-resolute			ros-core/.
	@docker build --tag=ros:rolling-ros-base-resolute			ros-base/.
	@docker build --tag=ros:rolling-perception-resolute			perception/.
	# @docker build --tag=osrf/ros:rolling-simulation-resolute			simulation/.
	# @docker build --tag=osrf/ros:rolling-desktop-resolute			desktop/.
	# @docker build --tag=osrf/ros:rolling-desktop-full-resolute			desktop-full/.

pull:
	@docker pull ros:rolling-ros-core-resolute
	@docker pull ros:rolling-ros-base-resolute
	@docker pull ros:rolling-perception-resolute
	# @docker pull osrf/ros:rolling-simulation-resolute
	# @docker pull osrf/ros:rolling-desktop-resolute
	# @docker pull osrf/ros:rolling-desktop-full-resolute

clean:
	@docker rmi -f ros:rolling-ros-core-resolute
	@docker rmi -f ros:rolling-ros-base-resolute
	@docker rmi -f ros:rolling-perception-resolute
	# @docker rmi -f osrf/ros:rolling-simulation-resolute
	# @docker rmi -f osrf/ros:rolling-desktop-resolute
	# @docker rmi -f osrf/ros:rolling-desktop-full-resolute

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-desktop-resolute \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-desktop-resolute \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-resolute; \
		docker tag \
			osrf/ros:rolling-desktop-resolute \
			osrf/ros:rolling-desktop; \
		docker push \
			osrf/ros:rolling-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-simulation-resolute \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-simulation-resolute \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-simulation-resolute; \
		docker tag \
			osrf/ros:rolling-simulation-resolute \
			osrf/ros:rolling-simulation; \
		docker push \
			osrf/ros:rolling-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-desktop-full-resolute \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-desktop-full-resolute \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-full-resolute; \
		docker tag \
			osrf/ros:rolling-desktop-full-resolute \
			osrf/ros:rolling-desktop-full; \
		docker push \
			osrf/ros:rolling-desktop-full; \
	fi
