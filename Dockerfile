FROM alpine:3.8

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/docker-entrypoint.sh

# Run the command on container startup
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
