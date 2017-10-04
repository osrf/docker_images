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
	@docker build --tag=gazebo:gzserver7	gzserver7/.
	@docker build --tag=gazebo:libgazebo7	libgazebo7/.
	# @docker build --tag=gazebo:gzclient7	gzclient7/.
	# @docker build --tag=gazebo:gzweb7			gzweb7/.

pull:
	@docker pull gazebo:libgazebo7
	@docker pull gazebo:gzserver7
	# @docker pull gazebo:gzclient7
	# @docker pull gazebo:gzweb7

clean:
	@docker rmi -f gazebo:libgazebo7
	@docker rmi -f gazebo:gzserver7
	# @docker rmi -f gazebo:gzclient7
	# @docker rmi -f gazebo:gzweb7
