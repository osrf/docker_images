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
	@docker build --tag=ros:$release_name-ros-core-$os_code_name			ros-core/.
	@docker build --tag=ros:$release_name-ros-base-$os_code_name			ros-base/.
	@docker build --tag=ros:$release_name-perception-$os_code_name			perception/.
	# @docker build --tag=osrf/ros:$release_name-simulation-$os_code_name			simulation/.
	# @docker build --tag=osrf/ros:$release_name-desktop-$os_code_name			desktop/.
	# @docker build --tag=osrf/ros:$release_name-desktop-full-$os_code_name			desktop-full/.

pull:
	@docker pull ros:$release_name-ros-core-$os_code_name
	@docker pull ros:$release_name-ros-base-$os_code_name
	@docker pull ros:$release_name-perception-$os_code_name
	# @docker pull osrf/ros:$release_name-simulation-$os_code_name
	# @docker pull osrf/ros:$release_name-desktop-$os_code_name
	# @docker pull osrf/ros:$release_name-desktop-full-$os_code_name

clean:
	@docker rmi -f ros:$release_name-ros-core-$os_code_name
	@docker rmi -f ros:$release_name-ros-base-$os_code_name
	@docker rmi -f ros:$release_name-perception-$os_code_name
	# @docker rmi -f osrf/ros:$release_name-simulation-$os_code_name
	# @docker rmi -f osrf/ros:$release_name-desktop-$os_code_name
	# @docker rmi -f osrf/ros:$release_name-desktop-full-$os_code_name

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:$release_name-desktop-$os_code_name \
		--cache-to=type=inline \
		--tag=osrf/ros:$release_name-desktop-$os_code_name \
		desktop/.
	@if [ "$os_name" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:$release_name-desktop-$os_code_name; \
    	docker tag \
			osrf/ros:$release_name-desktop-$os_code_name \
			osrf/ros:$release_name-desktop; \
		docker push \
			osrf/ros:$release_name-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:$release_name-simulation-$os_code_name \
		--cache-to=type=inline \
		--tag=osrf/ros:$release_name-simulation-$os_code_name \
		simulation/.
	@if [ "$os_name" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:$release_name-simulation-$os_code_name; \
		docker tag \
			osrf/ros:$release_name-simulation-$os_code_name \
			osrf/ros:$release_name-simulation; \
		docker push \
			osrf/ros:$release_name-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:$release_name-desktop-full-$os_code_name \
		--cache-to=type=inline \
		--tag=osrf/ros:$release_name-desktop-full-$os_code_name \
		desktop-full/.
	@if [ "$os_name" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:$release_name-desktop-full-$os_code_name; \
		docker tag \
			osrf/ros:$release_name-desktop-full-$os_code_name \
			osrf/ros:$release_name-desktop-full; \
		docker push \
			osrf/ros:$release_name-desktop-full; \
	fi
