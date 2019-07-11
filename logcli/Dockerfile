# First stage: build the executable.
FROM golang:1.12 as builder
ENV CGO_ENABLED=0
RUN go get github.com/grafana/loki/cmd/logcli && \
	go build -installsuffix 'static' /go/src/github.com/grafana/loki/cmd/logcli

# Final stage: the running container.
FROM alpine:3.9 AS final
LABEL maintainer="mail@christian-niehoff.com"
WORKDIR /bin/
# Import the compiled executable from the first stage.
COPY --from=builder /go/logcli .
ENTRYPOINT [ "/bin/sh", "-c" ]
CMD [ "/bin/logcli" ]