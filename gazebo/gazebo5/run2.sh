docker run -ti \
	-u $(whoami) -w "$HOME" \
	-v /dev/snd:/dev/snd \
	-v "/etc/passwd:/etc/passwd:ro" \
	-v "/etc/shadow:/etc/shadow:ro" \
	-v "/etc/group:/etc/group:ro" \
	-v "/etc/sudoers.d:/etc/sudoers.d:ro" \
	-v "/etc/localtime:/etc/localtime:ro" \
	-e DISPLAY=unix$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	--device /dev/nvidia0:/dev/nvidia0 \
	--device /dev/nvidiactl:/dev/nvidiactl \
	"$@"
