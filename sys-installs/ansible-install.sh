#!/bin/bash

#See if user is root or sudo. 
#Found line from https://askubuntu.com/questions/15853/how-can-a-script-check-if-its-being-run-as-root
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root or sudo"
  exit 1
fi

#Check if the manager is apt or not.
#Found command -v syntax from https://unix.stackexchange.com/questions/46081/identifying-the-system-package-manager
if ! command -v apt &> /dev/null; then
  echo "This programs requires apt."
  exit 1
fi

#Inform the user Ansible will be installed.
echo "You are about to install Anisble. Please press y to proceed or n to cancel."
read -rp "Proceed or cancel: " userInput

#Check user input to continue
if [[ "$userInput" != "y" ]]; then
  echo "Exiting script."
  exit 0
fi

#Check if Ansible is already installed
if command -v ansible &> /dev/null; then
  echo "Anisble already installed."
  exit 0
fi

#Add Ansible. Instructions from https://spacelift.io/blog/how-to-install-ansible
sudo apt update
sudo apt install ansible -y

#Check if Ansible is in /dev/null
if command -v anisble &> /dev/null; then
  echo "Anisble is now installed. Try a command such as 'ansible-inventory --list -y' to view a list."
else
  echo "Installation unsucessful."
  exit 1
fi
