#!/bin/bash
[ -e dockerfiles.tar.gz ] && rm dockerfiles.tar.gz

tar cvzf dockerfiles.tar.gz Dockerfile root/

md5sum dockerfiles.tar.gz
