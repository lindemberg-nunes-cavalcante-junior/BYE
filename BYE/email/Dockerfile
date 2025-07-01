FROM debian:stable-slim

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y postfix dovecot-core dovecot-imapd telnet && \
    apt-get clean

COPY postfix/main.cf /etc/postfix/main.cf
COPY start.sh /start.sh

RUN echo "bye.br" > /etc/mailname
RUN chmod +x /start.sh

EXPOSE 25 587 993

CMD ["/start.sh"]

