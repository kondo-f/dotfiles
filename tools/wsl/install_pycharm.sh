#!/bin/bash
set -euo pipefail

# Install IME
sudo apt -y install language-pack-ja fcitx-mozc dbus-x11 x11-xserver-utils
sudo update-locale LANG=ja_JP.UTF8
sudo sh -c "dbus-uuidgen > /var/lib/dbus/machine-id"

# Install PyCharm Community
VERSION="2023.3.2"
INSTALL_DIR="${HOME}/opt"

mkdir -p "${INSTALL_DIR}"
cd "${INSTALL_DIR}"
curl -L https://download.jetbrains.com/python/pycharm-community-${VERSION}.tar.gz -o pycharm-community-${VERSION}.tar.gz
tar zxf pycharm-community-${VERSION}.tar.gz
rm pycharm-community-${VERSION}.tar.gz
