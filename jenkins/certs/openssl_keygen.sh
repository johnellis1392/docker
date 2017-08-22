#!/bin/bash

# Generate Openssl certificates for jenkins

# Generate new key
openssl genrsa -out https.key 2048

# Generate new certificate signing request from key
openssl req -new -key https.key -out https.csr

# Generate new certificate from key and csr
openssl x509 -req -in https.csr -signkey https.key -out https.pem

