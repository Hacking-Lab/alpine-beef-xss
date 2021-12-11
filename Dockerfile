FROM hackinglab/alpine-base
MAINTAINER Stephan Hauser <stephan.hauser@compass-security.com>

RUN apk add -U \
  git \
  bash \
  curl \
  ruby \
  ruby-dev \
  ruby-io-console \
  ruby-bigdecimal \
  sqlite-dev \
  sqlite-libs \
  zlib-dev \
  curl-dev \
  build-base \
  libstdc++ \
  nodejs \
  ruby-bundler

RUN git clone git://github.com/beefproject/beef.git /app && \
    cd /app && bundle install

RUN apk del build-base sqlite-dev zlib-dev curl-dev ruby-dev && rm -rf /var/cache/apk/*

ENV LANG "en_US.UTF-8"
RUN mkdir /opt/GeoIP && yes | /app/update-geoipdb

COPY /root /

EXPOSE 3000

ENTRYPOINT [ "/init" ]
