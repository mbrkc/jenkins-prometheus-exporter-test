FROM alpine:3.7

COPY jenkins_exporter.py /root/jenkins_exporter.py

RUN apk add --no-cache --update python py-pip bash ca-certificates \
    && pip install --upgrade pip \
    && pip install --upgrade prometheus-client \
    && pip install --upgrade requests \
    && apk del --purge deps
WORKDIR /root
