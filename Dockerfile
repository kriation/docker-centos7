FROM centos:centos7
LABEL maintainer="armen@kriation.com"

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vendor=""
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.vendor=""

# Enable non-interactive installation by yum and update
RUN yum -y update && yum -y clean packages
