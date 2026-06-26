#!/bin/bash
set -e

apt-get update -y
apt-get install -y nginx docker.io

systemctl enable nginx
systemctl start nginx

systemctl enable docker
systemctl start docker

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
  <title>DevOps Full Stack Deployment</title>
</head>
<body>
  <h1>DevOps Full Stack Deployment Lab</h1>
  <p>Deployed with Terraform on AWS EC2.</p>
  <p>Server configured automatically using user_data.</p>
</body>
</html>
EOF
