all: help

help:
	@@echo ""
	@@echo "-- Help Menu"
	@@echo ""
	@@echo "   1. make build            - build all images"
	@@echo "   2. make pull             - pull all images"
	@@echo "   3. make clean            - remove all images"
	@@echo ""

build:
	@@docker build --tag=ros:@release_name-ros-@os_code_name          ros/.

pull:
	@@docker pull ros:@release_name-ros-@os_code_name

clean:
	@@docker rmi -f ros:@release_name-ros-@os_code_name
