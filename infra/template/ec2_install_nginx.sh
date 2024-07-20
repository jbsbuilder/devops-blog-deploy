#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y nginx nodejs npm git

sudo ufw allow 80
sudo ufw allow 443

sudo git clone https://github.com/jbsbuilder/project-blog.git

# Update directory
sudo cd project-blog

sudo npm install
sudo npm run build

# Configure Nginx to serve the Svelte app Update svelte path
sudo cat <<EOF > /etc/nginx/sites-available/project-blog
server {
    listen 80;
    server_name _;

    root /var/www/svelte-app/build;
    index index.html;

    location / {
        try_files \$uri /index.html;
    }
}
EOF

sudo ln -s /etc/nginx/sites-available/project-blog /etc/nginx/sites-enabled/project-blog

sudo rm /etc/nginx/sites-enabled/default

sudo nginx -t

sudo systemctl restart nginx
sudo systemctl enable nginx

