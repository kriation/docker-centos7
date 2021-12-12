FROM centos:centos7 as build
# Enable non-interactive installation by yum and update
RUN yum -y update && yum -y install crontabs && yum -y clean packages

FROM build as publish
ARG BUILD_DATE
LABEL maintainer="armen@kriation.com" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.build-date="$BUILD_DATE" \
      org.label-schema.license="GPLv2" \
      org.label-schema.name="CentOS Base Image" \
      org.label-schema.version="7.9-2009" \
      org.label-schema.vendor="armen@kriation.com" \
      org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.licenses="GPL-2.0-only" \
      org.opencontainers.image.title="CentOS Base Image" \
      org.opencontainers.image.version="7.9-2009" \
      org.opencontainers.image.vendor="armen@kriation.com"
