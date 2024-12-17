FROM ghcr.io/stirling-tools/stirling-pdf:0.36.3
RUN apk add --no-cache \
    # You can add more language packages below 
    font-awesome \
    tesseract-ocr-data-ara \
    && tesseract --list-langs \
    && mv /usr/share/tessdata/* /usr/share/tessdata-original/ 