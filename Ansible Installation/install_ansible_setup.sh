#!/bin/bash

# This script will install Ansible on an Ubuntu EC2 instance and set up a directory for Ansible projects.

# Update package list and upgrade existing packages
echo "Updating package list..."
sudo apt update -y
sudo apt upgrade -y

# Install Python3 and pip (required for Ansible)
echo "Installing Python3 and pip..."
sudo apt install -y python3 python3-pip

# Install Ansible using pip
echo "Installing Ansible..."
pip3 install ansible

# Verify Ansible installation
echo "Verifying Ansible installation..."
ansible --version

# Create a directory for Ansible projects
echo "Creating project directories..."
mkdir -p ~/main_project/ansible

# Navigate to the ansible directory
cd ~/main_project/ansible

# Setup a sample Ansible inventory file
echo "Creating Ansible inventory file..."
echo "[local]" > inventory
echo "localhost ansible_connection=local" >> inventory

# Print a message to indicate setup completion
echo "Ansible installation and directory setup complete."
echo "You can now start adding your playbooks in ~/main_project/ansible"

# Make the script executable and run it
chmod +x install_ansible_setup.sh
./install_ansible_setup.sh
