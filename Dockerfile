FROM centos:centos7

MAINTAINER Armen Kaleshian <armen@kriation.com>

# Update the image and clean up after oursevles
RUN yum update -y && yum clean all

