#!/bin/bash
sudo yum update -y
sudo yum install -y java-1.8.0
echo "Hello from Java EC2 Server" > /home/ec2-user/index.html
nohup python3 -m http.server 80 --directory /home/ec2-user &
