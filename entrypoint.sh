#!/bin/bash
if [ ! -f /local/cert.pem ]; then
  mkdir -p /local
  openssl req -x509 -newkey rsa:4096 -keyout /local/key.pem -out /local/cert.pem -sha256 -days 3650 -nodes -subj "/C=XX/ST=StateName/L=CityName/O=CompanyName/OU=CompanySectionName/CN=clamav-icap-tls"
fi
nginx
c-icap -f /etc/c-icap/c-icap.conf -D -N
