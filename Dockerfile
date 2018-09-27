# jq Image

# Set the base image to Busybox
FROM alpine:3.8

# File Author / Maintainer
LABEL name="LifeCare JQ" \
      maintainer="Nick Lalumiere <nlalumiere@lifecare.com>" \
      version=$JQ_VERSION \
      git-commit=$GIT_COMMIT

# Update Repos and Install curl/jq
RUN echo http://mirror.yandex.ru/mirrors/alpine/v3.8/main > /etc/apk/repositories && \
    echo http://mirror.yandex.ru/mirrors/alpine/v3.8/community >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache curl && \
    apk add --no-cache jq && \
    addgroup -g 1000 jq && \
    adduser -D -u 1000 -s /bin/sh -G jq jq

ENV JQ_VERSION="2.0"

# User
USER jq

# Start the service
#ENTRYPOINT ["/bin/sh"]

