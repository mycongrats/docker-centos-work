FROM mycongrats/centos

COPY req.txt /root/req.txt

RUN yum install -y epel-release

RUN yum install -y svn git gcc g++ python2-pip python-devel which cronie lsof vim zip unzip \
    yum clean all

RUN pip install -r /root/req.txt
