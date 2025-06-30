FROM Ubuntu:latest

RUN apt update -y

RUN apt upgrade -y

RUN apt install bind9 dnsutils -y

COPY named.conf.local /etc/bind

COPY db.asa.br /etc/bind

EXPOSE 53/tcp
EXPOSE 53/udp