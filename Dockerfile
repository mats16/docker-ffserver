FROM alpine:3.8

RUN apk add --no-cache ffmpeg

WORKDIR /data

COPY ffserver.conf /etc/ffserver.conf

EXPOSE 554 8090

ENTRYPOINT ["ffserver"]
