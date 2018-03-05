FROM alpine:3.7

LABEL version="2.2.8"

RUN apk add --no-cache curl openssl unzip && \
    addgroup -g 1000 -S ngrok && \
    adduser -u 1000 -S ngrok -G ngrok -h /home/ngrok

WORKDIR  /home/ngrok
ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip /home/ngrok/ngrok.zip

RUN cd /home/ngrok \
 && unzip ngrok.zip \
 && rm ngrok.zip \
 && chown ngrok:ngrok ngrok \
 && mkdir -p .ngrok2

COPY ngrok.yml /home/ngrok/.ngrok2/ngrok.yml

USER ngrok

ENTRYPOINT ["./ngrok"]
