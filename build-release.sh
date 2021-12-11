#!/bin/bash
docker build --no-cache -t hackinglab/alpine-beef-xss:$1.0 -t hackinglab/alpine-beef-xss:$1 -t hackinglab/alpine-beef-xss:latest -f Dockerfile .

docker push hackinglab/alpine-beef-xss
docker push hackinglab/alpine-beef-xss:$1
docker push hackinglab/alpine-beef-xss:$1.0

