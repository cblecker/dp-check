FROM registry.access.redhat.com/ubi10/go-toolset:1784176657 AS builder

RUN CGO_ENABLED=0 go install github.com/GoogleCloudPlatform/grpc-gcp-tools/dp_check@latest

####
FROM registry.access.redhat.com/ubi10-minimal:10.2-1782798957

COPY --from=builder /opt/app-root/src/go/bin/dp_check /usr/local/bin/dp_check

USER 1001

ENTRYPOINT ["/usr/local/bin/dp_check"]
