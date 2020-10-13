FROM ubuntu:xenial
RUN apt-get update \
    && apt-get install -y --no-install-recommends vim openvpn \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY openvpn.deb .
RUN ls
RUN dpkg -i --force-overwrite openvpn.deb
RUN openvpn --version || echo '1'
RUN cp /etc/openvpn/* /usr/share/openvpn/
WORKDIR /etc/openvpn
ENTRYPOINT ["openvpn"]
