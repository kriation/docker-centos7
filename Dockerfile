FROM centos:centos7
LABEL maintainer="armen@kriation.com"

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE

# Enable non-interactive installation by yum and update
RUN sed -i 's/^\[main\]/\[main\]\nassumeyes = 1/' /etc/yum.conf\
	&& yum update && yum clean all && rm -rf /var/cache/yum
