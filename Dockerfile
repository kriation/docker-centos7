FROM centos:centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Credit to Michael Grosser (https://github.com/stp-ip) 
# for container standardization per 
# https://github.com/docker/docker/issues/9277

# This Dockerfile is based on the format defined here: 
# https://github.com/seetheprogress/dockerfiles

# Define container directories
RUN mkdir -p /con/proc \
    && mkdir -p /con/data \
    && mkdir -p /con/log \
    && mkdir -p /con/configuration \
    && mkdir -p /con/var \
    && mkdir -p /con/context \
    && mkdir -p /con/secret

# Define default condition
RUN touch /con/proc/DEFAULT \
    && touch /con/data/DEFAULT \
    && touch /con/log/DEFAULT \
    && touch /con/configuration/DEFAULT \
    && touch /con/var/DEFAULT \
    && touch /con/context/DEFAULT \
    && touch /con/secret/DEFAULT \
    && touch /con/configuration/ENV \
    && touch /con/secret/ENV \
    && echo "DEFAULT" > /con/seed

COPY default_check.sh /con/context/default_check.sh
RUN chmod +x /con/context/default_check.sh

# Enable non-interactive installation by yum and update
RUN sed -i 's/^\[main\]/\[main\]\nassumeyes = 1/' /etc/yum.conf && \
    yum update && yum clean all
