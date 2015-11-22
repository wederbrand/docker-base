# Cassandra
#
# VERSION               1.0

FROM ubuntu:14.04
MAINTAINER Andreas Wederbrand andreas@wederbrand.se

# install emacs and apt-get-utilities
RUN apt-get update
RUN apt-get install -y emacs23-nox software-properties-common python-software-properties curl wget

ENV term xterm

# Remove useless files
RUN rm -rf /var/lib/apt/lists/*

USER root
CMD bash