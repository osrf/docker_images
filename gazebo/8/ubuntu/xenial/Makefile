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
	@docker build --tag=gazebo:gzserver8	gzserver8/.
	@docker build --tag=gazebo:libgazebo8	libgazebo8/.
	# @docker build --tag=gazebo:gzclient8	gzclient8/.
	# @docker build --tag=gazebo:gzweb8			gzweb8/.

pull:
	@docker pull gazebo:libgazebo8
	@docker pull gazebo:gzserver8
	# @docker pull gazebo:gzclient8
	# @docker pull gazebo:gzweb8

clean:
	@docker rmi -f gazebo:libgazebo8
	@docker rmi -f gazebo:gzserver8
	# @docker rmi -f gazebo:gzclient8
	# @docker rmi -f gazebo:gzweb8
