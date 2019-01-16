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
	@docker build --tag=gazebo:gzserver8-xenial	gzserver8/.
	@docker build --tag=gazebo:libgazebo8-xenial	libgazebo8/.
	# @docker build --tag=gazebo:gzclient8-xenial	gzclient8/.
	# @docker build --tag=gazebo:gzweb8-xenial			gzweb8/.

pull:
	@docker pull gazebo:libgazebo8-xenial
	@docker pull gazebo:gzserver8-xenial
	# @docker pull gazebo:gzclient8-xenial
	# @docker pull gazebo:gzweb8-xenial

clean:
	@docker rmi -f gazebo:libgazebo8-xenial
	@docker rmi -f gazebo:gzserver8-xenial
	# @docker rmi -f gazebo:gzclient8-xenial
	# @docker rmi -f gazebo:gzweb8-xenial
