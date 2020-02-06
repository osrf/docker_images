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
	@docker build --tag=gazebo:gzserver11-bionic	gzserver11/.
	@docker build --tag=gazebo:libgazebo11-bionic	libgazebo11/.
	# @docker build --tag=gazebo:gzclient11-bionic	gzclient11/.
	# @docker build --tag=gazebo:gzweb11-bionic			gzweb11/.

pull:
	@docker pull gazebo:libgazebo11-bionic
	@docker pull gazebo:gzserver11-bionic
	# @docker pull gazebo:gzclient11-bionic
	# @docker pull gazebo:gzweb11-bionic

clean:
	@docker rmi -f gazebo:libgazebo11-bionic
	@docker rmi -f gazebo:gzserver11-bionic
	# @docker rmi -f gazebo:gzclient11-bionic
	# @docker rmi -f gazebo:gzweb11-bionic
