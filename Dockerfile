FROM golang:1.14-alpine as builder

RUN mkdir -p desafio
WORKDIR /src

COPY src/main.go ./src/main.go
COPY src/main_test.go ./src/main_test.go

# RUN go build

RUN ls

RUN echo "AQUI"

# FROM scratch

# COPY --from=builder /desafio/desafio .

# ENTRYPOINT ["./desafio"]
CMD ["cd", "src", "go", "test"]