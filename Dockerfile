# jq Image

# Set the base image to Busybox
FROM alpine:latest

# File Author / Maintainer
LABEL name="LifeCare JQ"
LABEL maintainer="Nick Lalumiere <nlalumiere@lifecare.com>"
LABEL version=$JQ_VERSION
LABEL git-commit=$GIT_COMMIT

# Update Repos
#RUN echo http://mirror.yandex.ru/mirrors/alpine/v3.8/main > /etc/apk/repositories; \
#    echo http://mirror.yandex.ru/mirrors/alpine/v3.8/community >> /etc/apk/repositories

# Installing curl/jq
RUN apk add --no-cache curl
RUN apk add --no-cache jq

ENV JQ_VERSION="2.0"

# Start the service
#ENTRYPOINT ["/bin/sh"]

