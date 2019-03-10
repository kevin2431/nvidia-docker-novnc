#/bin/bash

docker run --init --runtime=nvidia --name=gnome --rm -it -e DISPLAY=:1 -v /tmp/.X11-unix/X0:/tmp/.X11-unix/X0:rw -p 40001:40001 gnome
