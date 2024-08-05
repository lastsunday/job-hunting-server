FROM --platform=$BUILDPLATFORM alpine:3.20.2
WORKDIR /app
ARG TARGETOS TARGETARCH
COPY job-hunting-server-${TARGETOS}-${TARGETARCH} ./job-hunting-server
ENV ROCKET_ADDRESS=0.0.0.0
ENV ROCKET_PORT=8000
EXPOSE 8000
CMD ["./job-hunting-server"]
