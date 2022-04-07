FROM golang:alpine as build
RUN apk update && apk add --no-cache git
WORKDIR /src
COPY . .
RUN go version
RUN go test -cover
RUN go build .