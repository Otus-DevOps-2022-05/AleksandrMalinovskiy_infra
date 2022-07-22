#!/bin/bash
sudo apt-get update;
sleep 20
sudo apt-get install -y mongodb;
sudo systemctl start mongodb;
sudo systemctl enable mongodb;
sudo systemctl status mongodb;
