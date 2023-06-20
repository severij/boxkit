FROM docker.io/library/archlinux:base-devel

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="My personalized image for a user space container" \
      maintainer="severi.jaaskelainen@gmail.com"

COPY packages /
RUN pacman -Syu --needed --noconfirm - < packages
RUN rm /packages

# Clean up cache
RUN pacman -Scc --noconfirm

# Enable sudo permission for wheel users
RUN echo "%wheel ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/toolbox

RUN   ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \ 
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/transactional-update
