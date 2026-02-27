# CyberWarFare_Repo
CyberWarFare_Assesment Task

Web IPaddress: http://13.233.28.188:8000/

Task-1 (SSH Setup)
Configured secure SSH access and implemented passwordless authentication using SSH key-based login.

Server Details
OS: Ubuntu 22.04
Hosted on: Amazon Web Services EC2
Instance type: t2.micro

Commands Used
sudo apt install openssh-server
ssh-keygen
ssh-copy-id ubuntu@<server-ip>
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

Task-2 (Docker Deployment)
Deploy containerized web application using Docker.

Commands Used
sudo apt install docker.io
docker build -t my-web-app .
docker run -d -p 8000:80 my-web-app
docker ps
OUTPUT:
http://13.233.28.188:8000/

Task-3 (Monitoring Script)
Monitor container CPU & memory usage every minute.
crontab -e
* * * * * /opt/container-monitor/monitor.sh

2026-02-26 18:30:01 | CPU: 0.03% | Memory: 5.4MiB / 100MiB
docker stats
cron automation
timestamp logging

Task-4 (User & Permissions)
Secure monitoring logs using dedicated user.
useradd monitoruser
chown -R monitoruser:monitoruser /opt/container-monitor
chmod -R 700 /opt/container-monitor

Task-5 (Firewall)
Configure firewall rules to restrict access.
Commands Used
ufw allow from <your-ip> to any port 22
ufw allow 8000
ufw enable
ufw status

Project-Submission/
│
├── Task-1/
│   ├── README.md
│
├── Task-2/
│   ├── README.md
│   ├── Dockerfile
│   └── index.html
│
├── Task-3/
│   ├── README.md
│   └── monitor.sh
│
├── Task-4/
│   ├── README.md
│
├── Task-5/
│   ├── README.md
│
└── README.md
