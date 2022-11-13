FROM nginx:1.23-alpine

# Copy the nginx configuration file
COPY config/nginx.conf /etc/nginx/nginx.conf

# Copy template files
COPY templates /etc/nginx/templates

# Copy scripts
COPY scripts/add_page.sh /usr/local/bin/add_page
COPY scripts/remove_page.sh /usr/local/bin/remove_page
