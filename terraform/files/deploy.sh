#!/bin/bash
sleep 30
set -e
APP_DIR=${1:-$HOME}
sudo apt-get install -y git
sleep 30
sudo git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
sudo apt install -y ruby-bundler 
sudo apt install -y ruby-full 
sudo apt install -y build-essential
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
