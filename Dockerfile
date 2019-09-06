FROM mycongrats/centos

COPY req.txt /root/
COPY vim.cnf /root/
COPY solarized.vim /usr/share/vim/vim74/colors/

RUN yum install -y epel-release

RUN yum install -y svn git gcc g++ python2-pip python-devel which cronie lsof vim zip unzip \
    && yum clean all

RUN pip install -r /root/req.txt --no-cache-dir \
    && cat /root/vim.cnf >> /etc/vimrc \
    && rm -rf /root/req.txt \
    && rm -rf /root/vim.cnf
