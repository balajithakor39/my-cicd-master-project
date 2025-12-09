#!/bin/bash
EC2_IP="$1"
if [ -z "$EC2_IP" ]; then
  echo "Usage: $0 <EC2_IP>"
  exit 1
fi
IMAGE="yourdockerhub/cloud-security:latest"
ssh -o StrictHostKeyChecking=no ubuntu@${EC2_IP} <<'EOF'
docker pull '"'"${IMAGE}"'"'
docker stop cloud-security || true
docker rm cloud-security || true
docker run -d --name cloud-security -p 80:8080 '"'"${IMAGE}"'"'
EOF
