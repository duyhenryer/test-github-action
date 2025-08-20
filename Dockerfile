FROM golang:1.22 AS builder
WORKDIR /app
COPY main.go .
ENV CGO_ENABLED=0
RUN go build -o main .
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
RUN chmod +x main
ENTRYPOINT ["/root/main"]