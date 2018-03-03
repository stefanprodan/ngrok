FROM alpine:latest

RUN apk add --no-cache curl openssl

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /ngrok

ENTRYPOINT ["/ngrok"]
