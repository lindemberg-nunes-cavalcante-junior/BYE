FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9 dnsutils

COPY named.conf.local /etc/bind/
COPY db.bye.br /etc/bind/
COPY db.cliente1.br /etc/bind/
COPY db.cliente2.br /etc/bind/
COPY db.cliente3.br /etc/bind/
#COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]

