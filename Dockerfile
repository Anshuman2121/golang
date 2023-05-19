FROM golang:1.20.4-alpine
WORKDIR /app
COPY . .
EXPOSE 8080
CMD ["golang", "main.go"]