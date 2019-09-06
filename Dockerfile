FROM mycongrats/centos

RUN yum install -y epel-release \
    yum install -y svn git gcc g++ python2-pip python-devel which cronie lsof vim zip unzip \
    yum clean all
