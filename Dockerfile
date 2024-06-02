FROM ghcr.io/stirling-tools/s-pdf:0.25.1-fat
RUN apk add --no-cache \
    # You can add more language packages below 
    tesseract-ocr-data-ara \
    && tesseract --list-langs \
    && mv /usr/share/tessdata/* /usr/share/tessdata-original/ 