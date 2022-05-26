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
	@docker build --tag=ros:humble-ros-core-jammy			ros-core/.
	@docker build --tag=ros:humble-ros-base-jammy			ros-base/.
	@docker build --tag=ros:humble-perception-jammy			perception/.
	# @docker build --tag=osrf/ros:humble-simulation-jammy			simulation/.
	# @docker build --tag=osrf/ros:humble-desktop-jammy			desktop/.
	# @docker build --tag=osrf/ros:humble-desktop-full-jammy			desktop-full/.

pull:
	@docker pull ros:humble-ros-core-jammy
	@docker pull ros:humble-ros-base-jammy
	@docker pull ros:humble-perception-jammy
	# @docker pull osrf/ros:humble-simulation-jammy
	# @docker pull osrf/ros:humble-desktop-jammy
	# @docker pull osrf/ros:humble-desktop-full-jammy

clean:
	@docker rmi -f ros:humble-ros-core-jammy
	@docker rmi -f ros:humble-ros-base-jammy
	@docker rmi -f ros:humble-perception-jammy
	# @docker rmi -f osrf/ros:humble-simulation-jammy
	# @docker rmi -f osrf/ros:humble-desktop-jammy
	# @docker rmi -f osrf/ros:humble-desktop-full-jammy

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:humble-desktop-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:humble-desktop-jammy \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:humble-desktop-jammy; \
    	docker tag \
			osrf/ros:humble-desktop-jammy \
			osrf/ros:humble-desktop; \
		docker push \
			osrf/ros:humble-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:humble-simulation-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:humble-simulation-jammy \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:humble-simulation-jammy; \
		docker tag \
			osrf/ros:humble-simulation-jammy \
			osrf/ros:humble-simulation; \
		docker push \
			osrf/ros:humble-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:humble-desktop-full-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:humble-desktop-full-jammy \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:humble-desktop-full-jammy; \
		docker tag \
			osrf/ros:humble-desktop-full-jammy \
			osrf/ros:humble-desktop-full; \
		docker push \
			osrf/ros:humble-desktop-full; \
	fi
