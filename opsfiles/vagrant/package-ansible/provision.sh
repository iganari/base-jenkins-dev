#!/bin/bash

set -x

yum_install_ansible()
{

  ### add reop
  yum install -y epel-release
  rpm -ivh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
  sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/epel.repo
 
  ### install python development tools
  yum clean all -y
  yum install --enablerepo=epel,remi -y python-devel openssl-devel gcc
  yum install --enablerepo=epel,remi -y python-pip
 
  ### install ansible
  pip install --upgrade pip
  pip install -r packages.txt

}

### install ansible
yum_install_ansible

### ansible-playbook ssh
playbook_dir=$(cd `dirname $0`; pwd)

# e.g. ansible-playbook -i ${playbook_dir}/inventoryfile/vagrant-web ${playbook_dir}/webserver-base-laravel.yml
# ansible-playbook -i ${playbook_dir}/inventoryfile/${1} ${playbook_dir}/${2} --check
ansible-playbook -i ${playbook_dir}/inventoryfile/${1} ${playbook_dir}/${2}


rm -rfv *.retry
