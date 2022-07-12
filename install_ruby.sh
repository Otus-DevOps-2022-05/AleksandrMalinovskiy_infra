#!/bin/bash

echo 'update system'
echo "$(sudo apt update)"

echo 'install ruby'
echo "$(sudo apt install -y ruby-full ruby-bundler build-essential)"

echo 'ruby version'
echo "$(ruby -v)"

echo 'bundler version'
echo "$(bundler -v)"
