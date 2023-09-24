# Use the official Nginx base image
FROM nginx

# Create image directory
RUN mkdir /usr/share/nginx/html/img 

# Copy custom index.html to the appropriate location
COPY index.html /usr/share/nginx/html/index.html
COPY img /usr/share/nginx/html/img

# Set up access logging to be written to the mounted directory
# RUN ln -sf /dev/stdout /var/log/nginx/access.log

# Expose Nginx HTTP port
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
