#!/usr/bin/env bash

if ! type ansible-playbook > /dev/null; then
  sudo apt-add-repository ppa:ansible/ansible -y
  sudo apt update
  sudo DEBIAN_FRONTEND=noninteractive apt-get install ansible -y
fi

if [ ! -d "./aws-lemp-ubuntu" ]; then
  git clone https://github.com/igodorogea/aws-lemp-ubuntu.git
fi

ansible-playbook -i "localhost," -c local aws-lemp-ubuntu/provisioning/playbook.yml

mysql -e "CREATE USER 'neos_demo_user'@'localhost' IDENTIFIED BY 'zSTq4EHmYbfAZyMm';"
mysql -e "GRANT ALL ON neos_demo_db.* TO 'neos_demo_user'@'localhost';"
mysql -e "CREATE DATABASE neos_demo_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

sudo su - www-data
cd sites
git clone https://github.com/code-q-web-factory/Neos-Skeleton.git neos-demo
cd neos-demo
export NEOS_PACKAGE_NAME="MoldovaTrade.Site"
export COMPOSER_PACKAGE_NAME="moldovatrade\/site"
mv DistributionPackages/CodeQ.Site DistributionPackages/${NEOS_PACKAGE_NAME}
find ./DistributionPackages/${NEOS_PACKAGE_NAME} -type f | xargs sed -i "s/CodeQ\.Site/${NEOS_PACKAGE_NAME}/g"
find . -type f -name 'composer.json' | xargs sed -i "s/codeq\/site/${COMPOSER_PACKAGE_NAME}/g"
rm -rf .git docs && git init
composer i
git add .
git commit -m "TASK: Copy from Neos-Skeleton"
