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
	@docker build --tag=ros:kilted-ros-core-noble			ros-core/.
	@docker build --tag=ros:kilted-ros-base-noble			ros-base/.
	@docker build --tag=ros:kilted-perception-noble			perception/.
	# @docker build --tag=osrf/ros:kilted-simulation-noble			simulation/.
	# @docker build --tag=osrf/ros:kilted-desktop-noble			desktop/.
	# @docker build --tag=osrf/ros:kilted-desktop-full-noble			desktop-full/.

pull:
	@docker pull ros:kilted-ros-core-noble
	@docker pull ros:kilted-ros-base-noble
	@docker pull ros:kilted-perception-noble
	# @docker pull osrf/ros:kilted-simulation-noble
	# @docker pull osrf/ros:kilted-desktop-noble
	# @docker pull osrf/ros:kilted-desktop-full-noble

clean:
	@docker rmi -f ros:kilted-ros-core-noble
	@docker rmi -f ros:kilted-ros-base-noble
	@docker rmi -f ros:kilted-perception-noble
	# @docker rmi -f osrf/ros:kilted-simulation-noble
	# @docker rmi -f osrf/ros:kilted-desktop-noble
	# @docker rmi -f osrf/ros:kilted-desktop-full-noble

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:kilted-desktop-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:kilted-desktop-noble \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:kilted-desktop-noble; \
    	docker tag \
			osrf/ros:kilted-desktop-noble \
			osrf/ros:kilted-desktop; \
		docker push \
			osrf/ros:kilted-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:kilted-simulation-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:kilted-simulation-noble \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:kilted-simulation-noble; \
		docker tag \
			osrf/ros:kilted-simulation-noble \
			osrf/ros:kilted-simulation; \
		docker push \
			osrf/ros:kilted-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:kilted-desktop-full-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:kilted-desktop-full-noble \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:kilted-desktop-full-noble; \
		docker tag \
			osrf/ros:kilted-desktop-full-noble \
			osrf/ros:kilted-desktop-full; \
		docker push \
			osrf/ros:kilted-desktop-full; \
	fi
