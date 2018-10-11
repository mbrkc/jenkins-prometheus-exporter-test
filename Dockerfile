FROM alpine:3.7

COPY jenkins_exporter.py /root/jenkins_exporter.py

RUN apk add --no-cache --update python py-pip bash ca-certificates \
    && pip install --upgrade pip --no-cache \
    && pip install --upgrade prometheus-client --no-cache \
    && pip install --upgrade requests --no-cache \
    && apk del --purge deps --no-cache
WORKDIR /root
