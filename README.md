[![Build Status](https://travis-ci.org/kurrier/docker_alpine-jq.svg?branch=master)](https://travis-ci.org/kurrier/docker_alpine-jq) [![Anchore Image Overview](https://anchore.io/service/badges/image/11c8312196fa651ff29a6e171bd9726a8dfd9f838fec915db18f742e073ac617)](https://anchore.io/image/dockerhub/kurrier%2Falpine-jq%3Alatest)
# Alpine JQ 

A quick and easy Docker image to run curl/jq. Very helpful for API testing or CI platforms.

# Usage

```bash
$ docker run -t --name jq --rm kurier/alpine-jq:latest /bin/sh -c 'curl -sSL --header "TOKEN" -X GET "http://apiurl.io/" -H "accept: application/json" | jq .name'
  
```

# Credits

Docker Base from [Alpine](https://hub.docker.com/_/alpine/)
