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
	@docker build --tag=ros:$release_name-ros1-bridge-$os_code_name		ros1-bridge/.
	# @docker build --tag=osrf/ros:$release_name-desktop-$os_code_name			desktop/.

pull:
	@docker pull ros:$release_name-ros-core-$os_code_name
	@docker pull ros:$release_name-ros-base-$os_code_name
	@docker pull ros:$release_name-ros1-bridge-$os_code_name
	# @docker pull osrf/ros:$release_name-desktop-$os_code_name

clean:
	@docker rmi -f ros:$release_name-ros-core-$os_code_name
	@docker rmi -f ros:$release_name-ros-base-$os_code_name
	@docker rmi -f ros:$release_name-ros1-bridge-$os_code_name
	# @docker rmi -f osrf/ros:$release_name-desktop-$os_code_name

ci_buildx:
	@docker buildx build --pull --push \
		--cache-from=osrf/ros:$release_name-desktop-$os_code_name \
		--tag=osrf/ros:$release_name-desktop-$os_code_name \
		desktop/.
