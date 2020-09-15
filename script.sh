#!/bin/sh
apt update 
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev curl libbz2-dev 
curl -O https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz 
tar -xf Python-3.7.3.tar.xz 
cd Python-3.7.3  
./configure --enable-optimizations  
make -j 8  
make altinstall  
python3.7 --version 
apt install python3-pip 
pip --version 
pip list 
pip list --outdated 
