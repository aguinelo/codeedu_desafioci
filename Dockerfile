FROM golang:1.14-alpine as builder

WORKDIR /main

COPY src/main.go main.go
COPY src/main_test.go main_test.go

RUN go build 

FROM scratch

COPY --from=builder /main .

ENTRYPOINT ["./main"]