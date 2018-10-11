FROM alpine:3.7

COPY jenkins_exporter.py /root/jenkins_exporter.py

RUN apk add --no-cache --update python py-pip bash ca-certificates
RUN pip install --upgrade pip --no-cache
RUN pip install --upgrade prometheus-client --no-cache
RUN pip install --upgrade requests --no-cache
RUN apk del --purge deps
WORKDIR /root
