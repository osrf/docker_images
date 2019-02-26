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
	@docker build --tag=gazebo:gzserver10-bionic	gzserver10/.
	@docker build --tag=gazebo:libgazebo10-bionic	libgazebo10/.
	# @docker build --tag=gazebo:gzclient10-bionic	gzclient10/.
	# @docker build --tag=gazebo:gzweb10-bionic			gzweb10/.

pull:
	@docker pull gazebo:libgazebo10-bionic
	@docker pull gazebo:gzserver10-bionic
	# @docker pull gazebo:gzclient10-bionic
	# @docker pull gazebo:gzweb10-bionic

clean:
	@docker rmi -f gazebo:libgazebo10-bionic
	@docker rmi -f gazebo:gzserver10-bionic
	# @docker rmi -f gazebo:gzclient10-bionic
	# @docker rmi -f gazebo:gzweb10-bionic
