# icap clamav with tls

⚠️ DO NOT USE THIS IN PRODUCTION ⚠️

⚠️ THIS IS NOT SETUP AS PROPER VIRUS SCANNER ⚠️

⚠️ THIS IS ONLY INTENDED FOR TESTING PURPOSES ⚠️

## Usage

```shell
docker run -d -p 1344:1344 1345:1345 ghcr.io/icewind1991/icap-clamav-service-tls:latest
```

`c-icap` will be listening on port 1344 without TLS and 1345 with TLS

Certificates are stored in `/local/cert.pem` and `/local/key.pem`