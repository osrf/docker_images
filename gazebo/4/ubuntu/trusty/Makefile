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
	@docker build --tag=gazebo:gzserver4	gzserver4/.
	@docker build --tag=gazebo:libgazebo4	libgazebo4/.
	# @docker build --tag=gazebo:gzclient4	gzclient4/.
	# @docker build --tag=gazebo:gzweb4			gzweb4/.

pull:
	@docker pull gazebo:libgazebo4
	@docker pull gazebo:gzserver4
	# @docker pull gazebo:gzclient4
	# @docker pull gazebo:gzweb4

clean:
	@docker rmi -f gazebo:libgazebo4
	@docker rmi -f gazebo:gzserver4
	# @docker rmi -f gazebo:gzclient4
	# @docker rmi -f gazebo:gzweb4
