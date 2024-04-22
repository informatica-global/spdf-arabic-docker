# [Stirling PDF](https://stirlingtools.com/) Docker Container with Arabic OCR

The Arabic OCR package is installed directly inside the container. This removes the need for an extra volume mount. This is very desirable to maintain the statelessness of the application for use in Kubernetes and scalable installations.

To run using docker compose:

```sh
docker compose up -d
```

The server can be accessed using a web browser at:

```sh
http://localhost:8080
```
