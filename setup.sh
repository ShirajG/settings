#!/bin/bash
# Linux Setup for Developing Web Apps
echo "Yo get ready"

sudo apt-get update
sudo apt-get install git
sudo apt-get install build-essential libssl-dev
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.0.0-p598
echo 'gem: --no-document' >> ~/.gemrc
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.20.0/install.sh | bash
echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc
echo 'nvm use stable' >> ~/.bashrc
source ~/.nvm/nvm.sh
nvm install stable
nvm use stable
gem install rails
sudo apt-get install postgresql postgresql-contrib
sudo apt-get install pgadmin3
echo "That's about it, just run 'sudo -u postgres psql postgres' now and set a password for the postgres user with the '\password' command"
