#! /usr/bin/zsh

# launch the container and mount the access log directory
# to local directory
podman run -d -p 80:80 --name pi_nginx -v /Users/leonlevy/var/log:/var/log/nginx localhost/mi-nginx