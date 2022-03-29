### Build base stage
FROM google/cloud-sdk:alpine as base
RUN apk --update add openjdk7-jre
RUN gcloud components install app-engine-java kubectl

FROM scratch
WORKDIR /cloud-sdk
COPY --from=base /bin/gcloud .
CMD ["/bin/gcloud"]