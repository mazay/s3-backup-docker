FROM alpine

USER root

RUN apk -v --update add \
        python \
        py-pip \
        && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*

COPY backup_to_s3.sh /usr/local/bin
RUN chmod +x /usr/local/bin/backup_to_s3.sh

WORKDIR /data

CMD ["/usr/local/bin/backup_to_s3.sh"]

