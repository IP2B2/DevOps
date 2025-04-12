#!/bin/bash

CERT_PATH=nginx/certs

if [[ ! -d $CERT_PATH ]]; then
	mkdir -p $CERT_PATH 
else
	rm -rf $CERT_PATH
	mkdir -p $CERT_PATH
fi

openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj "/C=RO/ST=Iasi/L=Iasi/O=IP2B2" \
	-keyout $CERT_PATH/common.key \
	-out $CERT_PATH/common.crt 
