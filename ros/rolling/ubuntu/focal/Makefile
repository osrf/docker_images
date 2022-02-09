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
	@docker build --tag=ros:rolling-ros-core-focal			ros-core/.
	@docker build --tag=ros:rolling-ros-base-focal			ros-base/.
	@docker build --tag=ros:rolling-ros1-bridge-focal		ros1-bridge/.
	# @docker build --tag=osrf/ros:rolling-desktop-focal			desktop/.

pull:
	@docker pull ros:rolling-ros-core-focal
	@docker pull ros:rolling-ros-base-focal
	@docker pull ros:rolling-ros1-bridge-focal
	# @docker pull osrf/ros:rolling-desktop-focal

clean:
	@docker rmi -f ros:rolling-ros-core-focal
	@docker rmi -f ros:rolling-ros-base-focal
	@docker rmi -f ros:rolling-ros1-bridge-focal
	# @docker rmi -f osrf/ros:rolling-desktop-focal

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=osrf/ros:rolling-desktop-focal \
		--tag=osrf/ros:rolling-desktop-focal \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-focal; \
    	docker tag \
			osrf/ros:rolling-desktop-focal \
			osrf/ros:rolling-desktop; \
		docker push \
			osrf/ros:rolling-desktop; \
	fi
