FROM frooodle/s-pdf:0.22.8
RUN echo "@testing https://dl-cdn.alpinelinux.org/alpine/edge/main" | tee -a /etc/apk/repositories && \
    echo "@testing https://dl-cdn.alpinelinux.org/alpine/edge/community" | tee -a /etc/apk/repositories && \
    echo "@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing" | tee -a /etc/apk/repositories && \
    apk add --no-cache \
    tesseract-ocr-data-ara \
    && mv /usr/share/tessdata/* /usr/share/tessdata-original/ \
    #for debugging only
    #&& ls -lah /usr/share/tessdata \
    #&& find / -name "*.traineddata"