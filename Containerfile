FROM ghcr.io/ublue-os/ucore-minimal:stable

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit
