!/bin/bash
set -ex  # Enable debug mode to show errors

# Install updates and Docker
yum update -y
yum install -y docker

# Start Docker and enable on boot
systemctl start docker
systemctl enable docker

# Add ec2-user to Docker group so you can run Docker without sudo
usermod -aG docker ec2-user

# Pull and run Nginx container
docker pull nginx:alpine
docker run -d --name nginx-container -p 80:80 nginx:alpine