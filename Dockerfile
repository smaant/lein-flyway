FROM clojure:lein-2.7.1

ENV FLYWAY_VERSION=4.0.3
RUN curl -o /flyway.tar.gz https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/$FLYWAY_VERSION/flyway-commandline-$FLYWAY_VERSION.tar.gz && \
  tar -xzvf /flyway.tar.gz -C / && \
  rm /flyway.tar.gz && \
  ln -s /flyway-$FLYWAY_VERSION/flyway /usr/bin

ENTRYPOINT ["lein"]
