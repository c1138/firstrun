FROM ubuntu:latest

COPY 3.sh /usr/local/bin/3.sh

RUN chmod +x /usr/local/bin/3.sh

ENTRYPOINT ["/usr/local/bin/3.sh"]