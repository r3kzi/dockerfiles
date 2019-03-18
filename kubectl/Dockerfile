FROM alpine:3.9

LABEL maintainer="mail@christian-niehoff.com"

ENV K8S_VERSION=1.13.0
ENV K8S_URL=https://storage.googleapis.com/kubernetes-release/release/v${K8S_VERSION}/bin/linux/amd64/kubectl

RUN apk add --no-cache curl

RUN curl --location --remote-name --silent --show-error ${K8S_URL} && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

ENTRYPOINT ["/usr/local/bin/kubectl"]