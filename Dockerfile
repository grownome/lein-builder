FROM clojure
MAINTAINER Eric Fode

ADD project.clj project.clj
RUN lein deps

ENTRYPOINT ["/usr/local/bin/lein"]

