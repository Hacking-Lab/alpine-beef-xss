#!/bin/bash
docker build --no-cache -t hackinglab/alpine-beef-xss:3.2.0 -t hackinglab/alpine-beef-xss:3.2 -t hackinglab/alpine-beef-xss:latest -f Dockerfile .
