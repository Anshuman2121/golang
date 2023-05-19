FROM golang:latest
RUN git clone https://github.com/Anshuman2121/golang.git
RUN go build
WORKDIR /app
COPY . .
EXPOSE 5000
CMD ["./m.exe"]