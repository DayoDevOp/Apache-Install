#! /bin/bash
yum install httpd -y
systemctl start httpd
systemctl enable httpd
echo "Welcome to Adetechnologies LLC. Thanks for your patronage" > /var/www/html/index.html
firewall-cmd --permanent --add-service={http,https}
firewall-cmd --reload
systemctl restart httpd

