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
	@docker build --tag=gazebo:gzserver$release_name	gzserver$release_name/.
	@docker build --tag=gazebo:libgazebo$release_name	libgazebo$release_name/.
	# @docker build --tag=gazebo:gzclient$release_name	gzclient$release_name/.
	# @docker build --tag=gazebo:gzweb$release_name			gzweb$release_name/.

pull:
	@docker pull gazebo:libgazebo$release_name
	@docker pull gazebo:gzserver$release_name
	# @docker pull gazebo:gzclient$release_name
	# @docker pull gazebo:gzweb$release_name

clean:
	@docker rmi -f gazebo:libgazebo$release_name
	@docker rmi -f gazebo:gzserver$release_name
	# @docker rmi -f gazebo:gzclient$release_name
	# @docker rmi -f gazebo:gzweb$release_name
