FROM alpine:latest

RUN apk --no-cache add py-pip jq

RUN pip --no-cache-dir install awscli

ADD bin /opt/resource
RUN chmod a+rx,go-w /opt/resource/*
