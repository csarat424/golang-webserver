# Dockerfile
FROM golang:latest

WORKDIR /app

COPY . .

RUN go mod init simple-golang-server && \
    go mod tidy && \
    go build -o main .

EXPOSE 8080

CMD ["./main"]
