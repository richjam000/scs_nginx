FROM gitlab.scsuk.net:5005/scsuk/ext_registry/redhat/ubi7-init:7.6-23
COPY yum.repos.d/scs_repo.repo /etc/yum.repos.d
RUN yum-config-manager --disable \* && \
    yum-config-manager --enable rhel-server-rhscl-7-rpms rhel-7-server-rpms && \
    yum -y install rh-nginx18 && \
    systemctl enable rh-nginx18-nginx
COPY conf.d /etc/opt/rh/rh-nginx18/nginx/conf.d
