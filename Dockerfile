FROM nginx:1.7
MAINTAINER Hans Bergheim <hansbergheim@gmail.com>

# Install htpasswd utility and curl
RUN apt-get update \
    && apt-get install -y curl apache2-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
# Add default credentials
RUN htpasswd -cb /etc/nginx/.htpasswd kibana "elastic"

# Copy Nginx config & ssl certificates
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ["ssl/nginx.crt", "ssl/nginx.key", "/etc/nginx/ssl/"]

# Run nginx
CMD ["nginx", "-g", "daemon off;"]