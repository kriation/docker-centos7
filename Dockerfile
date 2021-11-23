FROM centos:centos7
LABEL maintainer="armen@kriation.com"

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vendor=""
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.vendor=""

# Set up docker-entrypoint.d
COPY /docker-entrypoint.sh /
ONBUILD COPY docker-entrypoint.d /docker-entrypoint.d

# Enable non-interactive installation by yum and update
RUN yum -y update && yum -y install crontabs && yum -y clean packages
