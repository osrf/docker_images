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
	@docker build --tag=osrf/ros2:nightly --target nightly nightly/.
	@docker build --tag=osrf/ros2:nightly-rmw --target nightly-rmw nightly/.
	@docker build --tag=osrf/ros2:nightly-rmw-nonfree --target nightly-rmw-nonfree nightly/.

pull:
	@docker pull osrf/ros2:nightly
	@docker pull osrf/ros2:nightly-rmw
	@docker pull osrf/ros2:nightly-rmw-nonfree

clean:
	@docker rmi -f osrf/ros2:nightly
	@docker rmi -f osrf/ros2:nightly-rmw
	@docker rmi -f osrf/ros2:nightly-rmw-nonfree
