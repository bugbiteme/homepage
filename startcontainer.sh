#! /usr/bin/zsh

# launch the container and mount the access log directory
# to local directory
podman run -d -p 80:80 --name pi_nginx -v ~/var/log/nginx:/var/log/nginx pi_nginx