FROM nginx:1.23

EXPOSE 80 443

# Copy the nginx configuration file
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY templates /etc/nginx/templates

# Copy scripts
COPY scripts /scripts
RUN chmod +x /scripts/*
ENV PATH="/scripts:${PATH}"

# Prepare directories
RUN mkdir -p /etc/nginx/containers

ENTRYPOINT ["nginx", "-g", "daemon off;"]
