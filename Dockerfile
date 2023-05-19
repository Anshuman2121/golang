FROM golang:latest
RUN go mod init src/m
RUN go mod tidy
RUN export $GOPATH=/usr/local/go/src
RUN go build
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["m.exe"]