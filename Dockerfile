FROM alpine:latest

RUN apk update && apk add bash curl ca-certificates && rm -rf /var/cache/apk/*
RUN update-ca-certificates

ADD coredns /bin/coredns
ADD scripts /scripts

EXPOSE 53 53/udp

