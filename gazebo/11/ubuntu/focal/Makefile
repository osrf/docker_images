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
	@docker build --tag=gazebo:gzserver11-focal	gzserver11/.
	@docker build --tag=gazebo:libgazebo11-focal	libgazebo11/.
	# @docker build --tag=gazebo:gzclient11-focal	gzclient11/.
	# @docker build --tag=gazebo:gzweb11-focal			gzweb11/.

pull:
	@docker pull gazebo:libgazebo11-focal
	@docker pull gazebo:gzserver11-focal
	# @docker pull gazebo:gzclient11-focal
	# @docker pull gazebo:gzweb11-focal

clean:
	@docker rmi -f gazebo:libgazebo11-focal
	@docker rmi -f gazebo:gzserver11-focal
	# @docker rmi -f gazebo:gzclient11-focal
	# @docker rmi -f gazebo:gzweb11-focal
