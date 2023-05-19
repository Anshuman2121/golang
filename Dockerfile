FROM golang:1.20.4-alpine
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["golang", "main.go"]