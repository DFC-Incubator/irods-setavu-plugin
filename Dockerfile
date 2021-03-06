FROM centos:6
MAINTAINER tedgin@cyverse.org

RUN yum --assumeyes install \
        boost gcc-c++ openssl-devel \
        ftp://ftp.renci.org/pub/irods/releases/4.1.9/centos6/irods-dev-4.1.9-centos6-x86_64.rpm \
        ftp://ftp.renci.org/pub/irods/releases/4.1.9/centos6/irods-runtime-4.1.9-centos6-x86_64.rpm

RUN mkdir /src

VOLUME /src
WORKDIR /src

CMD bash
