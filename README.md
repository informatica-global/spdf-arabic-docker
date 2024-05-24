# [Stirling PDF](https://stirlingtools.com/) Docker Container with Arabic OCR

This Docker container is based on the official [Stirling-PDF](https://github.com/Stirling-Tools/Stirling-PDF) container with the Arabic OCR package installed directly inside the container along with the English OCR. This removes the need for an extra volume mount. This makes it easier to install for Arabic-speaking users and maintains the statelessness of the application for use in Kubernetes and scalable installations.

## Running the server in Docker

To run using docker compose:

```sh
docker compose up -d
```

The server can be accessed using a web browser at:

```sh
http://localhost:8080
```

## Building your own Docker Image

To build locally:

```sh
docker buildx build -t ghcr.io/informatica-global/spdf-arabic-docker .
```
