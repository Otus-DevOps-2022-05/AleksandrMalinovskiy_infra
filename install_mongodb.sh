#!/bin/bash
echo "install mongodb:"
sudo apt update
sudo apt -y install mongodb
sudo systemctl enable mongodb
sudo systemctl start mongodb

