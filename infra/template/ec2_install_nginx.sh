#!/bin/bash
apt-get update -y
apt-get install -y nginx nodejs npm git

ufw allow 80
ufw allow 443

git clone https://github.com/jbsbuilder/project-blog.git

# Update directory
cd /var/www/svelte-app

npm install
npm run build

# Configure Nginx to serve the Svelte app Update svelte path
cat <<EOF > /etc/nginx/sites-available/project-blog
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

ln -s /etc/nginx/sites-available/project-blog /etc/nginx/sites-enabled/project-blog

rm /etc/nginx/sites-enabled/default

nginx -t

systemctl restart nginx
systemctl enable nginx

