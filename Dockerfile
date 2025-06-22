FROM alpine:latest

WORKDIR /webssh

COPY . .

EXPOSE 8888

RUN apk update && apk upgrade && \
    apk add --no-cache tzdata libc6-compat gcompat coreutils openssl curl bash && \
    chmod +x start.sh

CMD ["sh", "-c", "./start.sh & tail -f /dev/null"]
