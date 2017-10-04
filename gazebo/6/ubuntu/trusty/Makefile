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
	@docker build --tag=gazebo:gzserver6	gzserver6/.
	@docker build --tag=gazebo:libgazebo6	libgazebo6/.
	# @docker build --tag=gazebo:gzclient6	gzclient6/.
	# @docker build --tag=gazebo:gzweb6			gzweb6/.

pull:
	@docker pull gazebo:libgazebo6
	@docker pull gazebo:gzserver6
	# @docker pull gazebo:gzclient6
	# @docker pull gazebo:gzweb6

clean:
	@docker rmi -f gazebo:libgazebo6
	@docker rmi -f gazebo:gzserver6
	# @docker rmi -f gazebo:gzclient6
	# @docker rmi -f gazebo:gzweb6
