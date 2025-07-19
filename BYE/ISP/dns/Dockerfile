FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y bind9 dnsutils

COPY named.conf.local /etc/bind/
COPY db.bye.br /etc/bind/

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
