# First stage: build the executable.
FROM alpine as builder
ENV CURL_VERSION=7.65.3
WORKDIR /root
RUN apk add gcc make musl-dev openssl-dev
RUN wget --quiet https://curl.haxx.se/download/curl-${CURL_VERSION}.tar.gz && \
	tar --gzip --extract --file curl-${CURL_VERSION}.tar.gz
WORKDIR curl-${CURL_VERSION}
RUN ./configure --disable-shared --with-ca-fallback --with-ssl && \
	make curl_LDFLAGS=-all-static && \
	make install

# Second stage: fetch certificates
FROM alpine as certs
RUN apk update && apk add ca-certificates
RUN wget --quiet https://curl.haxx.se/ca/cacert.pem

# Final stage: the running container.
FROM busybox:1.31.0 AS busybox
LABEL maintainer="mail@christian-niehoff.com"
COPY --from=builder /usr/local/bin/curl /usr/bin/curl
COPY --from=certs /etc/ssl/certs /etc/ssl/certs
COPY --from=certs /cacert.pem /etc/ssl/cert.pem