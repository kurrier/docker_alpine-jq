# jq Image

# Set the base image to Busybox
FROM alpine:latest

# File Author / Maintainer
MAINTAINER Nick Lalumiere <nlalumiere@lifecare.com>

# Update Repos
#RUN echo http://mirror.yandex.ru/mirrors/alpine/v3.8/main > /etc/apk/repositories; \
#    echo http://mirror.yandex.ru/mirrors/alpine/v3.8/community >> /etc/apk/repositories

# Installing curl/jq
RUN apk add --no-cache curl
RUN apk add --no-cache jq

# Start the service
#ENTRYPOINT ["/bin/sh"]

