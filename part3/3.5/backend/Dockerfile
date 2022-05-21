FROM golang:1.16-alpine

EXPOSE 8080

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN go build && \
    adduser -D appuser && \
    chown appuser /usr/src/app

USER appuser

CMD ["./server"]