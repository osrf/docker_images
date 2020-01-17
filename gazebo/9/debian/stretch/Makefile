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
	@docker build --tag=gazebo:gzserver9-stretch	gzserver9/.
	@docker build --tag=gazebo:libgazebo9-stretch	libgazebo9/.
	@docker build --tag=gazebo:gzclient9-stretch	gzclient9/.
	# @docker build --tag=gazebo:gzweb9-stretch			gzweb9/.

pull:
	@docker pull gazebo:libgazebo9-stretch
	@docker pull gazebo:gzserver9-stretch
	# @docker pull gazebo:gzclient9-stretch
	# @docker pull gazebo:gzweb9-stretch

clean:
	@docker rmi -f gazebo:libgazebo9-stretch
	@docker rmi -f gazebo:gzserver9-stretch
	# @docker rmi -f gazebo:gzclient9-stretch
	# @docker rmi -f gazebo:gzweb9-stretch
