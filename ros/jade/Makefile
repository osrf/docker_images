all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make build            - build all images"
	@echo "   4. make clean            - remove all images"
	@echo "   2. make pull             - pull all images"
	@echo "   3. make push             - push all images"
	@echo "   4. make tag              - tag all images"
	@echo ""

build:
	@docker build --tag=ros:jade-ros-core 	jade-ros-core/.
	@docker build --tag=ros:jade-ros-base 	jade-ros-base/.
	@docker build --tag=ros:jade-robot 		jade-robot/.
	@docker build --tag=ros:jade-perception 	jade-perception/.

pull:
	@docker pull ros:jade-ros-core
	@docker pull ros:jade-ros-base
	@docker pull ros:jade-robot
	@docker pull ros:jade-perception

push:
	@docker push osrf/ros:jade-ros-core
	@docker push osrf/ros:jade-ros-base
	@docker push osrf/ros:jade-robot
	@docker push osrf/ros:jade-perception

clean:
	@docker rmi -f ros:jade-ros-core
	@docker rmi -f ros:jade-ros-base
	@docker rmi -f ros:jade-robot
	@docker rmi -f ros:jade-perception

tag:
	@docker tag -f ros:jade-ros-core		osrf/ros:jade-ros-core
	@docker tag -f ros:jade-ros-base 		osrf/ros:jade-ros-base
	@docker tag -f ros:jade-robot 		osrf/ros:jade-robot
	@docker tag -f ros:jade-perception 	osrf/ros:jade-perception
