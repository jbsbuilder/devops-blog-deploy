#!/bin/bash

# Update package lists
sudo apt-get update -y

# Install nginx, nodejs, npm, and git
sudo apt-get install -y nginx nodejs npm git

# Allow HTTP and HTTPS traffic through the firewall
sudo ufw allow 80
sudo ufw allow 443

# Clone the project repository
git clone https://github.com/jbsbuilder/project-blog.git

# Update directory to project-blog
cd project-blog

# Install npm dependencies and build the project
npm install
npm run build

# Configure Nginx to serve the Svelte app
sudo bash -c 'cat <<EOF > /etc/nginx/sites-available/project-blog
server {
    listen 80;
    server_name _;

    root /home/ubuntu/project-blog/build; # Update this path to the correct build output
    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOF'

# Create a symbolic link to enable the Nginx configuration
sudo ln -s /etc/nginx/sites-available/project-blog /etc/nginx/sites-enabled/project-blog

# Remove the default Nginx configuration if it exists
sudo rm -f /etc/nginx/sites-enabled/default

# Test the Nginx configuration for syntax errors
sudo nginx -t

# Restart Nginx to apply the new configuration
sudo systemctl restart nginx

# Enable Nginx to start on boot
sudo systemctl enable nginx
