#!/bin/bash

# Generate certificates for registry
openssl genrsa -out https.key 2048

openssl req -config openssl.cnf -new -key https.key -out https.csr

openssl x509 -req -in https.csr -signkey https.key -out https.crt


# Do all the above with one command
# openssl req -config openssl.cnf -nodes -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365


