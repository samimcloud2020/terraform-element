#!/bin/sh
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl status apache2
