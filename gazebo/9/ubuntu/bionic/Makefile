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
	@docker build --tag=gazebo:gzserver9-bionic	gzserver9/.
	@docker build --tag=gazebo:libgazebo9-bionic	libgazebo9/.
	# @docker build --tag=gazebo:gzclient9-bionic	gzclient9/.
	# @docker build --tag=gazebo:gzweb9-bionic			gzweb9/.

pull:
	@docker pull gazebo:libgazebo9-bionic
	@docker pull gazebo:gzserver9-bionic
	# @docker pull gazebo:gzclient9-bionic
	# @docker pull gazebo:gzweb9-bionic

clean:
	@docker rmi -f gazebo:libgazebo9-bionic
	@docker rmi -f gazebo:gzserver9-bionic
	# @docker rmi -f gazebo:gzclient9-bionic
	# @docker rmi -f gazebo:gzweb9-bionic
