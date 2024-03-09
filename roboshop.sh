#!/bin/bash
yum install ansible -y
cd /tmp
git clone https://github.com/pesiinfosys/My-Roboshop-Ansible-Roles.git
cd My-Roboshop-Ansible-Roles


## declare the components in array variable
declare -a component=("mongodb" "catalogue" "redis" "cart" "user" "mysql" "shipping" "rabbitmq" "payment" "dispatch" "web")

## now loop through the above array
for i in "${component[@]}"
do
   ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=$i main.yml
done

### This script used to configure all components by calling ansible roles
### This script will run while creating Ansible ec2_instance using terraform
### we are proving this script as user_data to Ansible ec2_instance