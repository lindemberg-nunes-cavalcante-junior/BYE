FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9 dnsutils

COPY named.conf /etc/bind/named.conf
COPY db.asa.local /etc/bind/db.asa.local

CMD ["named", "-g"]
