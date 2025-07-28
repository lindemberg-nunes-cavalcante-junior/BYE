FROM ubuntu:20.04

RUN apt-get update && apt-get install -y bind9 dnsutils

COPY named.conf /etc/bind/named.conf
COPY db.bye /etc/bind/db.bye
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

