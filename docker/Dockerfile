FROM localhost:5000/redhat/ubi7-init:7.6-23
RUN yum-config-manager --enable rhel-server-rhscl-7-rpms
RUN yum -y install rh-nginx18
RUN systemctl enable rh-nginx18-nginx
COPY conf.d /etc/opt/rh/rh-nginx18/nginx/conf.d
