FROM golang:alpine AS builder

WORKDIR /app
RUN apk update && apk add --no-cache git
ENV USER=appuser
ENV UID=10001 
RUN adduser \    
    --disabled-password \    
    --gecos "" \    
    --home "/nonexistent" \    
    --shell "/sbin/nologin" \    
    --no-create-home \    
    --uid "${UID}" \    
    "${USER}"

COPY . .

RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /app/dispatcher dispatcher.go

FROM scratch

COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group
COPY --from=builder /app/dispatcher /go/bin/dispatcher

USER appuser:appuser

ENTRYPOINT ["/go/bin/dispatcher"]