FROM golang:1.16-alpine as build-env

WORKDIR /usr/src/app

ENV REQUEST_ORIGIN=http://localhost:5000

COPY . .

RUN CGO_ENABLED=0 go build -o server .


FROM alpine

WORKDIR /usr/src/app

RUN apk --no-cache add ca-certificates && \
    adduser -D appuser && \
    chown appuser /usr/src/app

COPY --from=build-env /usr/src/app/server ./

USER appuser

EXPOSE 8080

CMD ["./server"]