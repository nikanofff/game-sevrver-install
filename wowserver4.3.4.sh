#!/bin/bash
# Скрипт для автоматической установки сервера WoW Cataclism
# Протестированно на Ubuntu server 17.10
# И так поехали!
sudo apt-get update && apt-get upgrade && apt-dist-upgrade -y
apt-get install git clang cmake make gcc g++ libmysqlclient-dev libssl-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mysql-server p7zip
update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang 100
sudo adduser cata
sudo su - cata
cd ~/
git clone -b master git://github.com/TrinityCore/TrinityCore.git
