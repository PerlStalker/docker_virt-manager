A simple container to run [virt-manager](http://virt-manager.org/) to
manage VMs running under libvirt.

This is designed for use via X11 on a local desktop. It doesn't do any
sort of SSH or VNC console.

For this to work, you may need to run `xhost +` on your docker host
(desktop) to allow X11 to connect and you need to map `/tmp/.X11-unix`
as a volume in the container as described in
[this blog post](http://golangcloud.blogspot.com/2014/06/run-x11-application-inside-docker.html).

    docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY perlstalker/virt-manager

