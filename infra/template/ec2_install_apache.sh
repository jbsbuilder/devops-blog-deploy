#!/bin/bash

#these commands are for Amazon Linux 2. They must be ran after the instance is created.

sudo dnf update -y

sudo dnf install httpd git curl -y

sudo systemctl start httpd

sudo systemctl enable httpd

sudo usermod -a -G apache ec2-user

exit

groups

sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;

find /var/www -type f -exec sudo chmod 0664 {} \;

curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install -y nodejs

git clone https://github.com/jbsbuilder/project-blog.git

cd project-blog

npm install

npm run build

sudo cp -r dist/* /var/www/html/
