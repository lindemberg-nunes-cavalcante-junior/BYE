FROM alpine:latest

RUN apk add --no-cache postfix

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]
