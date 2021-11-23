# CentOS v7
This is a CentOS v7 image derived from the official centos:centos7.

The changes from the upstream provider are the following:
* Updated packages on build time
* Stage docker-entrypoint.sh to execute tailored scripts in /docker-entrypoint.d (thanks to [camptocamp](https://www.camptocamp.com/en/news-events/flexible-docker-entrypoints-scripts) for the idea)
