FROM golang:1.14-alpine as builder

WORKDIR /desafioci

COPY src/desafioci/main.go main.go
COPY src/desafioci/main_test.go main_test.go

RUN go build 

FROM scratch

COPY --from=builder /desafioci .

ENTRYPOINT ["./desafioci"]