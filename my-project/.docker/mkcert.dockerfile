FROM golang:latest

RUN go install filippo.io/mkcert@latest

WORKDIR /root/.local/share/mkcert

ENTRYPOINT echo $DOMAINS && mkcert -install && mkcert --key-file key.pem --cert-file cert.pem $DOMAINS