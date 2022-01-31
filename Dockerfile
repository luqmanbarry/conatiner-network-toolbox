#FROM registry.access.redhat.com/ubi8/ubi
# This image is picked because it aligns with RHEL 8
FROM quay.io/fedora/fedora:33

RUN adduser support
COPY packages.txt ./
RUN yum -y update && \
    yum -y install $(cat packages.txt) && \
    yum clean all

