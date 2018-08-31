FROM golang:1.8

WORKDIR /go/src/tlsbit
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

RUN apt-get update
RUN apt-get install net-tools

EXPOSE 443/tcp 

CMD ["tlsbit"]
