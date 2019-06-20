docker volume create scs_nginx_config
docker volume create scs_nginx_log
docker volume create scs_nginx_certs

# Need to update the certificates dir first !

docker run -d --name=scs_nginx --network=jamnet --hostname=scs_nginx --publish 80:80 --publish 443:443 \
-v scs_nginx_config:/etc/opt/rh/rh-nginx18/nginx \
-v scs_nginx_certs:/mnt/certs \
-v scs_nginx_logs:/var/opt/rh/rh-nginx18/log/nginx \
--restart=always localhost:5000/scsuk.net/scs_nginx:1.0

