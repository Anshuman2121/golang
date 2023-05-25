# FROM golang:latest
# RUN go mod init src/m
# RUN go mod tidy
# RUN export $GOPATH=/usr/local/go/src
# RUN go build
# WORKDIR /app
# COPY . .
# EXPOSE 5000
# CMD ["m.exe"]


FROM golang:alpine3.18
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build main.go
CMD ["/app/main.exe"]
EXPOSE 8080