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
	@docker build --tag=gazebo:gzserver11-jammy	gzserver11/.
	@docker build --tag=gazebo:libgazebo11-jammy	libgazebo11/.
	# @docker build --tag=gazebo:gzclient11-jammy	gzclient11/.
	# @docker build --tag=gazebo:gzweb11-jammy			gzweb11/.

pull:
	@docker pull gazebo:libgazebo11-jammy
	@docker pull gazebo:gzserver11-jammy
	# @docker pull gazebo:gzclient11-jammy
	# @docker pull gazebo:gzweb11-jammy

clean:
	@docker rmi -f gazebo:libgazebo11-jammy
	@docker rmi -f gazebo:gzserver11-jammy
	# @docker rmi -f gazebo:gzclient11-jammy
	# @docker rmi -f gazebo:gzweb11-jammy
