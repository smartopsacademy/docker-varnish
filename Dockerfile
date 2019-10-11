FROM alpine:latest
RUN apk add --no-cache varnish
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

