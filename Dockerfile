FROM golang:latest
RUN go mod init main.go/m
RUN go build
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["m.exe"]