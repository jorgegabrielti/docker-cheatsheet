# syntax=docker/dockerfile:1
FROM python:slim-buster
LABEL author="Jorge Gabriel [SRE]"

WORKDIR /app

RUN apt update -y \
  && apt install -y curl gnupg

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" \
  | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
  && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
  | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - \
  && apt-get update -y \
  && apt-get install google-cloud-sdk -y

COPY entrypoint.sh /app/

CMD ["/app/entrypoint.sh"]
