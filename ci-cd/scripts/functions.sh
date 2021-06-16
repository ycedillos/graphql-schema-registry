#!/bin/bash

install_graphql_scheme_registry () {
  docker build -f Dockerfile \
              --no-cache \
              --build-arg env=production \
              -t graphql-schema-registry .

  docker tag graphql-schema-registry ycedillos/graphql-schema-registry:1.2.4

  docker push ycedillos/graphql-schema-registry:1.2.4


}