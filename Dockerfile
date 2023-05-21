# FROM golang:latest
# RUN go mod init src/m
# RUN go mod tidy
# RUN export $GOPATH=/usr/local/go/src
# RUN go build
# WORKDIR /app
# COPY . .
# EXPOSE 5000
# CMD ["m.exe"]


FROM golang:alpine
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]
EXPOSE 8080