#!/bin/bash

yum install httpd -y
service httpd start
echo "<h1> Welcome to Terraform! Hello from Poornima!! </h1>" > /var/www/html/index.html
