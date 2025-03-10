FROM ghcr.io/stirling-tools/stirling-pdf:0.44.0
LABEL maintainer="informatica-global.com <support@informatica-global.com>"
LABEL org.opencontainers.image.title="Stirling PDF Arabic OCR"
LABEL org.opencontainers.image.description="This Docker container is based on the official Stirling-PDF container with the Arabic OCR package installed directly inside the container along with the English OCR."
LABEL org.opencontainers.image.url="https://github.com/informatica-global/spdf-arabic-docker"
LABEL org.opencontainers.image.source="https://github.com/informatica-global/spdf-arabic-docker"
LABEL org.opencontainers.image.licenses="MIT" 
LABEL org.opencontainers.image.version="0.36.6"
# LABEL org.opencontainers.image.created="2023-10-01T00:00:00Z"
# LABEL org.opencontainers.image.revision="abc123def456"

# Install additional language packages for Arabic OCR
RUN apk add --no-cache \
    # You can add more language packages below 
    font-awesome \
    tesseract-ocr-data-ara \
    && tesseract --list-langs \
    && mv /usr/share/tessdata/* /usr/share/tessdata-original/