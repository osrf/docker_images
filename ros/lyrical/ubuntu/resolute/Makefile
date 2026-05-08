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
	@docker build --tag=ros:lyrical-ros-core-resolute			ros-core/.
	@docker build --tag=ros:lyrical-ros-base-resolute			ros-base/.
	@docker build --tag=ros:lyrical-perception-resolute			perception/.
	# @docker build --tag=osrf/ros:lyrical-simulation-resolute			simulation/.
	# @docker build --tag=osrf/ros:lyrical-desktop-resolute			desktop/.
	# @docker build --tag=osrf/ros:lyrical-desktop-full-resolute			desktop-full/.

pull:
	@docker pull ros:lyrical-ros-core-resolute
	@docker pull ros:lyrical-ros-base-resolute
	@docker pull ros:lyrical-perception-resolute
	# @docker pull osrf/ros:lyrical-simulation-resolute
	# @docker pull osrf/ros:lyrical-desktop-resolute
	# @docker pull osrf/ros:lyrical-desktop-full-resolute

clean:
	@docker rmi -f ros:lyrical-ros-core-resolute
	@docker rmi -f ros:lyrical-ros-base-resolute
	@docker rmi -f ros:lyrical-perception-resolute
	# @docker rmi -f osrf/ros:lyrical-simulation-resolute
	# @docker rmi -f osrf/ros:lyrical-desktop-resolute
	# @docker rmi -f osrf/ros:lyrical-desktop-full-resolute

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:lyrical-desktop-resolute \
		--cache-to=type=inline \
		--tag=osrf/ros:lyrical-desktop-resolute \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:lyrical-desktop-resolute; \
    	docker tag \
			osrf/ros:lyrical-desktop-resolute \
			osrf/ros:lyrical-desktop; \
		docker push \
			osrf/ros:lyrical-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:lyrical-simulation-resolute \
		--cache-to=type=inline \
		--tag=osrf/ros:lyrical-simulation-resolute \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:lyrical-simulation-resolute; \
		docker tag \
			osrf/ros:lyrical-simulation-resolute \
			osrf/ros:lyrical-simulation; \
		docker push \
			osrf/ros:lyrical-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:lyrical-desktop-full-resolute \
		--cache-to=type=inline \
		--tag=osrf/ros:lyrical-desktop-full-resolute \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:lyrical-desktop-full-resolute; \
		docker tag \
			osrf/ros:lyrical-desktop-full-resolute \
			osrf/ros:lyrical-desktop-full; \
		docker push \
			osrf/ros:lyrical-desktop-full; \
	fi
