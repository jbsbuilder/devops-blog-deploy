#!/bin/bash

# Update package lists
sudo yum update -y

# Install nginx, nodejs, npm, and git
sudo amazon-linux-extras install -y nginx1
sudo yum install -y nodejs npm git

# Allow HTTP and HTTPS traffic through the firewall using iptables
sudo iptables -I INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT -p tcp --dport 443 -j ACCEPT
sudo service iptables save

# Start and enable Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Clone the project repository
git clone https://github.com/jbsbuilder/project-blog.git

# Update directory to project-blog
cd project-blog

# Install npm dependencies and build the project
npm install
npm run build

# Configure Nginx to serve the Svelte app
sudo bash -c 'cat <<EOF > /etc/nginx/conf.d/project-blog.conf
server {
    listen 80;
    server_name _;

    root /home/ec2-user/project-blog/build; # Update this path to the correct build output
    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOF'

# Test the Nginx configuration for syntax errors
sudo nginx -t

# Restart Nginx to apply the new configuration
sudo systemctl restart nginx
