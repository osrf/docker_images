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
	@docker build --tag=ros:rolling-ros-core-noble			ros-core/.
	@docker build --tag=ros:rolling-ros-base-noble			ros-base/.
	@docker build --tag=ros:rolling-perception-noble			perception/.
	# @docker build --tag=osrf/ros:rolling-simulation-noble			simulation/.
	# @docker build --tag=osrf/ros:rolling-desktop-noble			desktop/.
	# @docker build --tag=osrf/ros:rolling-desktop-full-noble			desktop-full/.

pull:
	@docker pull ros:rolling-ros-core-noble
	@docker pull ros:rolling-ros-base-noble
	@docker pull ros:rolling-perception-noble
	# @docker pull osrf/ros:rolling-simulation-noble
	# @docker pull osrf/ros:rolling-desktop-noble
	# @docker pull osrf/ros:rolling-desktop-full-noble

clean:
	@docker rmi -f ros:rolling-ros-core-noble
	@docker rmi -f ros:rolling-ros-base-noble
	@docker rmi -f ros:rolling-perception-noble
	# @docker rmi -f osrf/ros:rolling-simulation-noble
	# @docker rmi -f osrf/ros:rolling-desktop-noble
	# @docker rmi -f osrf/ros:rolling-desktop-full-noble

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-desktop-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-desktop-noble \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-noble; \
    	docker tag \
			osrf/ros:rolling-desktop-noble \
			osrf/ros:rolling-desktop; \
		docker push \
			osrf/ros:rolling-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-simulation-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-simulation-noble \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-simulation-noble; \
		docker tag \
			osrf/ros:rolling-simulation-noble \
			osrf/ros:rolling-simulation; \
		docker push \
			osrf/ros:rolling-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:rolling-desktop-full-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:rolling-desktop-full-noble \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:rolling-desktop-full-noble; \
		docker tag \
			osrf/ros:rolling-desktop-full-noble \
			osrf/ros:rolling-desktop-full; \
		docker push \
			osrf/ros:rolling-desktop-full; \
	fi
