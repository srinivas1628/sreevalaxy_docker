# This is a Dockerfile to create centos base image

FROM scratch 
MAINTAINER srinivas1628 <sree.garikiparthy@gmail.com>
LABEL Version="1.0.0" \
      release-date="2017-10-06"\
      Owner="DevOps Team"

ADD centos-7-docker.tar.xz /
COPY index.html /opt
ADD sample.tar /opt

ADD https://en.wikipedia.org/wiki/Water /opt
RUN useradd sree

ENV APACHE_LOG_DIR=/var/log
ENV DEBUG_LVL 4

USER sree

WORKDIR /opt

EXPOSE 22

CMD ["/bin/bash"]


# docker file for centos



