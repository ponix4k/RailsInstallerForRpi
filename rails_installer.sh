#!/bin/bash
read -p "Welcome user enter github username: " username
read -p "Please enter your github email address: " email
echo "installing main bits"
sudo apt-get install -y git curl zlib1g-dev subversion
echo "updating"
sudo apt-get update
echo "installing dependancies"
sudo apt-get install -y gnupg2 openssl libreadline6-dev git-core zlib1g libssl-dev libyaml$
echo "installing ruby"
curl -L get.rvm.io | bash -s stable --rails
echo "setting up source"
source source ~/.rvm/scripts/rvm
echo "set up git config"
git config --global user.name $username
git config --global user.email $email
git config -l
