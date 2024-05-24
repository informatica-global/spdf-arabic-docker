FROM docker.io/frooodle/s-pdf:0.24.6
RUN apk add --no-cache \
    # You can add more language packages below 
    tesseract-ocr-data-ara \
    && tesseract --list-langs \
    && mv /usr/share/tessdata/* /usr/share/tessdata-original/ 