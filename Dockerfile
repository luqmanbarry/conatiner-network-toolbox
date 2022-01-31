#FROM registry.access.redhat.com/ubi8/ubi
# This image is picked because RHEL is a derivative of Fedora Linux.
FROM quay.io/fedora/fedora:33

RUN adduser support
COPY packages.txt ./
RUN yum -y update && \
    yum -y install $(cat packages.txt) && \
    yum clean all

