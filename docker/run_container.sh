docker run -d --name=scs_nginx --network=jamnet --hostname=scs_nginx --restart=always \
--publish 80:80 --publish 443:443 \
-v scs_nginx_config:/etc/opt/rh/rh-nginx18/nginx \
-v scs_nginx_certs:/mnt/certs \
-v scs_nginx_logs:/var/opt/rh/rh-nginx18/log/nginx \
localhost:5000/scsuk.net/scs_nginx:1.0

echo "Now need to install the SSL certificates into volume scs_nginx_config"

