# syntax=docker/dockerfile:1
### Requiriments:
# - python3
# - pip3
ARG BUILD_BASE_IMAGE=alpine:3.15.3
FROM ${BUILD_BASE_IMAGE}

WORKDIR /app

RUN apk add --no-cache --upgrade bash

RUN apk add curl \
    && apk add --update --no-cache python3 \
    && ln -sf python3 /usr/bin/python \
    && python -m ensurepip \
    && pip3 install --no-cache --upgrade pip setuptools

RUN curl \
    https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-378.0.0-linux-x86_64.tar.gz \
    -o /tmp/google-cloud-sdk.tar.gz \
    && tar -xvf /tmp/google-cloud-sdk.tar.gz -C /app

COPY entrypoint.sh /app/

ENTRYPOINT ["/app/entrypoint.sh"]