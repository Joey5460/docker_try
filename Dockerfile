#FROM docker/whalesay:latest
#FROM docker.io/fedora
FROM fedora
RUN dnf -y update && dnf install -y fortune-mod.x86_64 \
&& dnf install -y cowsay
CMD fortune -a | cowsay
