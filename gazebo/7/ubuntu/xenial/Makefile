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
	@docker build --tag=gazebo:gzserver7-xenial	gzserver7/.
	@docker build --tag=gazebo:libgazebo7-xenial	libgazebo7/.
	# @docker build --tag=gazebo:gzclient7-xenial	gzclient7/.
	# @docker build --tag=gazebo:gzweb7-xenial			gzweb7/.

pull:
	@docker pull gazebo:libgazebo7-xenial
	@docker pull gazebo:gzserver7-xenial
	# @docker pull gazebo:gzclient7-xenial
	# @docker pull gazebo:gzweb7-xenial

clean:
	@docker rmi -f gazebo:libgazebo7-xenial
	@docker rmi -f gazebo:gzserver7-xenial
	# @docker rmi -f gazebo:gzclient7-xenial
	# @docker rmi -f gazebo:gzweb7-xenial
