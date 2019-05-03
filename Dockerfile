FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
    ssh \
    net-tools \
    screen \
    pptpd \
    file \
    && rm -rf /var/lib/apt/lists/*

COPY netextender /usr/local/netextender

RUN /bin/sh -c "/usr/local/netextender/setup.sh"

CMD ["export PATH=/usr/local/netextender:$PATH"]
