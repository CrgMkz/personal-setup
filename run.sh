#!/usr/bin/env bash

apt update
apt install -y software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install -y ansible
apt install -y git

ansible-galaxy install -f -r requirements.yml

ansible-pull -U https://github.com/cee-mack/personal-setup.git