FROM alpine:latest

LABEL version="2.2.8"

RUN apk add --no-cache curl openssl unzip && \
    addgroup -g 1000 -S ngrok && \
    adduser -u 1000 -S ngrok -G ngrok

ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /home/ngrok/ngrok.zip
RUN cd /home/ngrok && unzip ngrok.zip && rm ngrok.zip && chown ngrok:ngrok ngrok

USER ngrok
WORKDIR  /home/ngrok
ENTRYPOINT ["./ngrok"]
