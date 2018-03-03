FROM alpine:latest

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /ngrok.zip
RUN apk add --no-cache curl openssl unzip && unzip ngrok.zip


ENTRYPOINT ["/ngrok"]
