FROM alpine:3.9.2

ENV VERSION 3.3.2-r0
ENV CONFIG_DIR /etc/postfix

RUN apk --update add --no-cache postfix=${VERSION}

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
