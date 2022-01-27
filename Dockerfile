FROM registry.access.redhat.com/ubi8/ubi

RUN adduser support
COPY packages.txt ./
RUN yum -y update && \
    yum -y install $(cat packages.txt) && \
    yum clean all

