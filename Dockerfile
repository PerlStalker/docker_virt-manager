from ubuntu
maintainer perlstalker@gmail.com

run apt-get update
run apt-get install -y virt-manager ssh-client ssh-askpass

entrypoint /usr/bin/virt-manager --no-fork
