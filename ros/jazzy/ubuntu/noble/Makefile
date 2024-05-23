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
	@docker build --tag=ros:jazzy-ros-core-noble			ros-core/.
	@docker build --tag=ros:jazzy-ros-base-noble			ros-base/.
	@docker build --tag=ros:jazzy-perception-noble			perception/.
	# @docker build --tag=osrf/ros:jazzy-simulation-noble			simulation/.
	# @docker build --tag=osrf/ros:jazzy-desktop-noble			desktop/.
	# @docker build --tag=osrf/ros:jazzy-desktop-full-noble			desktop-full/.

pull:
	@docker pull ros:jazzy-ros-core-noble
	@docker pull ros:jazzy-ros-base-noble
	@docker pull ros:jazzy-perception-noble
	# @docker pull osrf/ros:jazzy-simulation-noble
	# @docker pull osrf/ros:jazzy-desktop-noble
	# @docker pull osrf/ros:jazzy-desktop-full-noble

clean:
	@docker rmi -f ros:jazzy-ros-core-noble
	@docker rmi -f ros:jazzy-ros-base-noble
	@docker rmi -f ros:jazzy-perception-noble
	# @docker rmi -f osrf/ros:jazzy-simulation-noble
	# @docker rmi -f osrf/ros:jazzy-desktop-noble
	# @docker rmi -f osrf/ros:jazzy-desktop-full-noble

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:jazzy-desktop-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:jazzy-desktop-noble \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:jazzy-desktop-noble; \
    	docker tag \
			osrf/ros:jazzy-desktop-noble \
			osrf/ros:jazzy-desktop; \
		docker push \
			osrf/ros:jazzy-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:jazzy-simulation-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:jazzy-simulation-noble \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:jazzy-simulation-noble; \
		docker tag \
			osrf/ros:jazzy-simulation-noble \
			osrf/ros:jazzy-simulation; \
		docker push \
			osrf/ros:jazzy-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:jazzy-desktop-full-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:jazzy-desktop-full-noble \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:jazzy-desktop-full-noble; \
		docker tag \
			osrf/ros:jazzy-desktop-full-noble \
			osrf/ros:jazzy-desktop-full; \
		docker push \
			osrf/ros:jazzy-desktop-full; \
	fi
