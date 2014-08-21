#!/bin/bash

if ! [ `which ansible` ]; then
	# if ansible does not exists, it maybe initial status.
	rpm -ivh http://ftp.riken.jp/Linux/fedora/epel/6/i386/epel-release-6-8.noarch.rpm
	yum update -y
	yum install -y ansible
	ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/bootstrap.yml
fi

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/site.yml