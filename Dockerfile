FROM golang:latest
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["./m.exe"]