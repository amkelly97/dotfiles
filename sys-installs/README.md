# What It Does
The ansible-install.sh program will silently install Anisble for the user. It checks if the user is sudo or root, and will only proceed if such. It requires apt, and checks that it is the system's manager. It will then ask the user if they wish to continue. If so, it will verify Ansible is not already installed, then proceed to install silently. If the installation is successful, the user is prompted to try a command specific to Ansible.

# Credits
For the first part of the script, I found a command from [AskUbuntu](https://askubuntu.com/questions/15853/how-can-a-script-check-if-its-being-run-as-root)

After doing some google searching, I found a [Stack Exchange forum post](https://unix.stackexchange.com/questions/46081/identifying-the-system-package-manager) to figure out if a manager or program is already installed.

Instructions to install Ansible on Ubuntu found on [Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-ubuntu-20-04#step-1-installing-ansible).
