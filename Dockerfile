FROM centos:centos7 as build

# Enable non-interactive installation by yum and update
RUN yum -y update && yum -y install crontabs && yum -y clean packages

FROM build as publish

ARG BUILD_DATE
LABEL maintainer="armen@kriation.com"
LABEL org.label-schema.build-date="$BUILD_DATE"
LABEL org.label-schema.license="GPLv2"
LABEL org.label-schema.name="CentOS Base Image"
LABEL org.label-schema.schema-version="7.9-2009"
LABEL org.label-schema.vendor="armen@kriation.com"
LABEL org.opencontainers.image.created="$BUILD_DATE"
LABEL org.opencontainers.image.licenses="GPL-2.0-only"
LABEL org.opencontainers.image.title="CentOS Base Image"
LABEL org.opencontainers.image.version="7.9-2009"
LABEL org.opencontainers.image.vendor="armen@kriation.com"
