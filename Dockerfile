# Confd / NGINX
#
# Version 0.0.1

FROM centos:7

ENTRYPOINT "boot.sh"

VOLUME ["/php"]

EXPOSE 80 

ADD boot.sh

RUN /bin/localedef -v -c -i en_US -f UTF-8 en_US.UTF-8;\
    yum -y install nginx; \
    yum clean all;\
    curl -L https://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 -o /usr/bin/confd;\
    chmod +x /usr/bin/confd
