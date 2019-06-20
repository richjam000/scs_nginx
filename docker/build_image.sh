docker build -t localhost:5000/scsuk.net/scs_nginx:1.0 -f docker/Dockerfile https://gitlab.scsuk.net/rich/scs_nginx.git#master
docker push localhost:5000/scsuk.net/scs_nginx:1.0
