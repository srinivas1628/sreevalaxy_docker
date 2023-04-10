# This is a Dockerfile to create centos base image
FROM centos:latest

# Maintainer information
LABEL maintainer="srinivas1628 <sree.garikiparthy@gmail.com>"
LABEL version="1.0.0"
LABEL release-date="2017-10-06"
LABEL owner="DevOps Team"

# Copy index.html file to nginx directory
COPY subdir/index.html /usr/share/nginx/html/

# Add sample.tar file to /opt directory
ADD sample.tar /opt/

# Download a web page to /opt directory
ADD https://en.wikipedia.org/wiki/Water /opt/

# Add a user 'sree'
RUN useradd sree

# Set environment variables
ENV APACHE_LOG_DIR /var/log
ENV DEBUG_LVL 4

# Set user to sree
USER sree

# Set working directory to /opt
WORKDIR /opt

# Expose port 22
EXPOSE 22

# Set default command to bash
CMD ["/bin/bash"]
