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
	@docker build --tag=gazebo:gzserver5	gzserver5/.
	@docker build --tag=gazebo:libgazebo5	libgazebo5/.
	# @docker build --tag=gazebo:gzclient5	gzclient5/.
	# @docker build --tag=gazebo:gzweb5			gzweb5/.

pull:
	@docker pull gazebo:libgazebo5
	@docker pull gazebo:gzserver5
	# @docker pull gazebo:gzclient5
	# @docker pull gazebo:gzweb5

clean:
	@docker rmi -f gazebo:libgazebo5
	@docker rmi -f gazebo:gzserver5
	# @docker rmi -f gazebo:gzclient5
	# @docker rmi -f gazebo:gzweb5
