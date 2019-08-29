FROM alpine:3.9

LABEL maintainer="mail@christian-niehoff.com"

RUN apk add --no-cache curl

ENV HELM_VERSION=2.14.3
ENV HELM_URL=https://storage.googleapis.com/kubernetes-helm/helm-v${HELM_VERSION}-linux-amd64.tar.gz

RUN curl --location --remote-name --silent --show-error ${HELM_URL} && \
    curl --location --remote-name --silent --show-error ${HELM_URL}.sha256 && \
    sha256sum helm-v${HELM_VERSION}-linux-amd64.tar.gz.sha256 | sha256sum -c && \
    rm helm-v${HELM_VERSION}-linux-amd64.tar.gz.sha256 && \
    tar --gzip --extract --file=helm-v${HELM_VERSION}-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin/helm

ENTRYPOINT ["/usr/local/bin/helm"]