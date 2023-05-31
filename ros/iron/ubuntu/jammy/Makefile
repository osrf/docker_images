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
	@docker build --tag=ros:iron-ros-core-jammy			ros-core/.
	@docker build --tag=ros:iron-ros-base-jammy			ros-base/.
	@docker build --tag=ros:iron-perception-jammy			perception/.
	# @docker build --tag=osrf/ros:iron-simulation-jammy			simulation/.
	# @docker build --tag=osrf/ros:iron-desktop-jammy			desktop/.
	# @docker build --tag=osrf/ros:iron-desktop-full-jammy			desktop-full/.

pull:
	@docker pull ros:iron-ros-core-jammy
	@docker pull ros:iron-ros-base-jammy
	@docker pull ros:iron-perception-jammy
	# @docker pull osrf/ros:iron-simulation-jammy
	# @docker pull osrf/ros:iron-desktop-jammy
	# @docker pull osrf/ros:iron-desktop-full-jammy

clean:
	@docker rmi -f ros:iron-ros-core-jammy
	@docker rmi -f ros:iron-ros-base-jammy
	@docker rmi -f ros:iron-perception-jammy
	# @docker rmi -f osrf/ros:iron-simulation-jammy
	# @docker rmi -f osrf/ros:iron-desktop-jammy
	# @docker rmi -f osrf/ros:iron-desktop-full-jammy

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:iron-desktop-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:iron-desktop-jammy \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:iron-desktop-jammy; \
    	docker tag \
			osrf/ros:iron-desktop-jammy \
			osrf/ros:iron-desktop; \
		docker push \
			osrf/ros:iron-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:iron-simulation-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:iron-simulation-jammy \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:iron-simulation-jammy; \
		docker tag \
			osrf/ros:iron-simulation-jammy \
			osrf/ros:iron-simulation; \
		docker push \
			osrf/ros:iron-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:iron-desktop-full-jammy \
		--cache-to=type=inline \
		--tag=osrf/ros:iron-desktop-full-jammy \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:iron-desktop-full-jammy; \
		docker tag \
			osrf/ros:iron-desktop-full-jammy \
			osrf/ros:iron-desktop-full; \
		docker push \
			osrf/ros:iron-desktop-full; \
	fi
