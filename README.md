# my-cicd-master-project
"End-to-end DevOps CI/CD Master Project including Docker, Jenkins, GitHub Actions, Kubernetes, Terraform, Ansible, Monitoring, and Cloud deployment automation."
devops-dual-cicd/
 ├── app/
 ├── Dockerfile
 ├── Jenkinsfile
 ├── .github/workflows/cicd.yml
 ├── scripts/deploy.sh
 ├── screenshots/
 ├── README.md
             ┌──────────────┐
             │  Developer    │
             └──────┬───────┘
                    │ Push Code
            ┌───────┴─────────┐
            │ GitHub Repo      │
            └──────┬──────────┘
      ┌────────────┼──────────────┐
      │             │              │
      ▼             ▼              ▼
GitHub Actions   Jenkins CI/CD   Webhook/Manual
      │             │              │
      └───────Build Docker Image──┘
                    │
                    ▼
              DockerHub Repo
                    │
                    ▼
          Deploy to AWS EC2 (Docker)
                    │
                    ▼
          Zabbix Agent on EC2 (Monitoring)
                    │
                    ▼
         Zabbix Server Dashboard + Alerts
