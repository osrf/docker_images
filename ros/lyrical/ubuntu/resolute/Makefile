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
	@docker build --tag=ros:lyrical-ros-core-noble			ros-core/.
	@docker build --tag=ros:lyrical-ros-base-noble			ros-base/.
	@docker build --tag=ros:lyrical-perception-noble			perception/.
	# @docker build --tag=osrf/ros:lyrical-simulation-noble			simulation/.
	# @docker build --tag=osrf/ros:lyrical-desktop-noble			desktop/.
	# @docker build --tag=osrf/ros:lyrical-desktop-full-noble			desktop-full/.

pull:
	@docker pull ros:lyrical-ros-core-noble
	@docker pull ros:lyrical-ros-base-noble
	@docker pull ros:lyrical-perception-noble
	# @docker pull osrf/ros:lyrical-simulation-noble
	# @docker pull osrf/ros:lyrical-desktop-noble
	# @docker pull osrf/ros:lyrical-desktop-full-noble

clean:
	@docker rmi -f ros:lyrical-ros-core-noble
	@docker rmi -f ros:lyrical-ros-base-noble
	@docker rmi -f ros:lyrical-perception-noble
	# @docker rmi -f osrf/ros:lyrical-simulation-noble
	# @docker rmi -f osrf/ros:lyrical-desktop-noble
	# @docker rmi -f osrf/ros:lyrical-desktop-full-noble

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:lyrical-desktop-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:lyrical-desktop-noble \
		desktop/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:lyrical-desktop-noble; \
    	docker tag \
			osrf/ros:lyrical-desktop-noble \
			osrf/ros:lyrical-desktop; \
		docker push \
			osrf/ros:lyrical-desktop; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:lyrical-simulation-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:lyrical-simulation-noble \
		simulation/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:lyrical-simulation-noble; \
		docker tag \
			osrf/ros:lyrical-simulation-noble \
			osrf/ros:lyrical-simulation; \
		docker push \
			osrf/ros:lyrical-simulation; \
	fi
	@docker buildx build --pull --push \
		--cache-from=type=registry,ref=osrf/ros:lyrical-desktop-full-noble \
		--cache-to=type=inline \
		--tag=osrf/ros:lyrical-desktop-full-noble \
		desktop-full/.
	@if [ "ubuntu" = "ubuntu" ]; then \
		docker pull \
			osrf/ros:lyrical-desktop-full-noble; \
		docker tag \
			osrf/ros:lyrical-desktop-full-noble \
			osrf/ros:lyrical-desktop-full; \
		docker push \
			osrf/ros:lyrical-desktop-full; \
	fi
