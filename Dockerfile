FROM golang:1.24.5 AS builder
WORKDIR /app
COPY . .
# Build a static linux binary
ENV CGO_ENABLED=0
ENV GOOS=linux
ENV GOARCH=amd64
RUN go build -ldflags="-s -w" -o main .

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
RUN chmod +x main
ENTRYPOINT ["/root/main"]