#FROM target/flottbot:latest
FROM dpritchett/flottbot:dev-latest

# needed to install some gems
ENV BUILD_PACKAGES curl-dev ruby-dev build-base

RUN apk update && apk upgrade && apk add bash $BUILD_PACKAGES

RUN apk add curl wget bash

RUN apk add ruby ruby-bundler ruby-io-console

ADD ./config /config

# clean up apk cache for smaller image result
RUN rm -rf /var/cache/apk/*

CMD ["/flottbot"]
