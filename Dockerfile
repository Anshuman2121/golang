FROM golang:alpine3.18
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build main.go
CMD ["/app/main.exe"]
EXPOSE 8080
