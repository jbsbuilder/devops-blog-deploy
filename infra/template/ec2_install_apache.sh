#!/bin/bash

sudo dnf update -y

sudo dnf install httpd git nodejs -y

sudo systemctl start httpd

sudo systemctl enable httpd

sudo usermod -a -G apache ec2-user

exit

#these commands must be ran after set up

<sudo chown -R ec2-user:apache /var/www

git clone https://github.com/jbsbuilder/project-blog.git

cd project-blog

npm install

npm run build

sudo cp -r dist/* /var/www/html/>
