# AnsibleDeploy-Simplified
AnsibleDeploy-Simplified provides easy-to-follow scripts for deploying websites and applications using Ansible. It includes Ansible installation, host connection setup, and deployment playbooks, making web deployment simpler for users at any level. Streamline your automation process with this practical Ansible resource.

# Ansible Portfolio Deployment Playbook

This repository contains a set of Ansible playbooks to automate the deployment of a personal portfolio website.

## Playbooks Overview

1. **install_nginx.yml** - Installs and starts the NGINX web server.
2. **safe_git_directory.yml** - Adds `/var/www/html/portfolio` as a safe Git directory.
3. **clone_repository.yml** - Clones the portfolio repository from GitHub.
4. **set_permissions.yml** - Configures directory permissions for the portfolio.

## Usage

1. Clone the repository to your Ansible control node.
2. Update the inventory file at `/etc/ansible/hosts` with your server details.
3. Run the main playbook to execute all tasks in sequence:

   ```bash
   ansible-playbook main_playbook.yml
