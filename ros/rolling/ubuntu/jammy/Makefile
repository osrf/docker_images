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
	@docker build --tag=ros:rolling-ros-core-jammy			ros-core/.
	@docker build --tag=ros:rolling-ros-base-jammy			ros-base/.
	@docker build --tag=ros:rolling-perception-jammy			perception/.
	# @docker build --tag=osrf/ros:rolling-simulation-jammy			simulation/.
	# @docker build --tag=osrf/ros:rolling-desktop-jammy			desktop/.
	# @docker build --tag=osrf/ros:rolling-desktop-full-jammy			desktop-full/.

pull:
	@docker pull ros:rolling-ros-core-jammy
	@docker pull ros:rolling-ros-base-jammy
	@docker pull ros:rolling-perception-jammy
	# @docker pull osrf/ros:rolling-simulation-jammy
	# @docker pull osrf/ros:rolling-desktop-jammy
	# @docker pull osrf/ros:rolling-desktop-full-jammy

clean:
	@docker rmi -f ros:rolling-ros-core-jammy
	@docker rmi -f ros:rolling-ros-base-jammy
	@docker rmi -f ros:rolling-perception-jammy
	# @docker rmi -f osrf/ros:rolling-simulation-jammy
	# @docker rmi -f osrf/ros:rolling-desktop-jammy
	# @docker rmi -f osrf/ros:rolling-desktop-full-jammy

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-desktop-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-desktop-jammy \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-jammy; \
    	docker tag \
			osrf/ros:rolling-desktop-jammy \
			osrf/ros:rolling-desktop; \
		docker push \
			osrf/ros:rolling-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-simulation-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-simulation-jammy \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-simulation-jammy; \
		docker tag \
			osrf/ros:rolling-simulation-jammy \
			osrf/ros:rolling-simulation; \
		docker push \
			osrf/ros:rolling-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-desktop-full-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-desktop-full-jammy \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-full-jammy; \
		docker tag \
			osrf/ros:rolling-desktop-full-jammy \
			osrf/ros:rolling-desktop-full; \
		docker push \
			osrf/ros:rolling-desktop-full; \
	fi
