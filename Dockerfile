
FROM java:alpine
MAINTAINER Andrew Phillips <theasp@gmail.com>

WORKDIR /tmp
ENV CLOJURE_VERSION=1.9.0.375

RUN apk add --update --no-cache openssl bash curl \
  && curl -s https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh | bash

ENTRYPOINT ["/usr/local/bin/lein"]
