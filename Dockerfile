FROM armv7/armhf-ubuntu

MAINTAINER Dev Ace <adriano.celentano@rackspace.co.uk>

ENV uid 1000
ENV gid 1000

RUN useradd -m vlc; \
    apt-get update; \
    apt-get install -y vlc \
    rm -rf /var/lib/apt/lists/*

COPY files/start_vlc.sh /tmp/

ENTRYPOINT ["/tmp/start_vlc.sh"]
