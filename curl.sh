#!/bin/sh
/bin/sh -c 'curl -k -sL -u gitlab_ci:68fb5438-fdc8-463a-b1f2-0da468573001 -X GET "https://registry.docker.lifecare.com/api/v0/repositories/lifecare/rhel_wordpress/tags" -H "accept: application/json" | jq .[] | jq .name'
