#!/bin/bash
set -euo pipefail

# Install IME
sudo apt -y install language-pack-ja fcitx-mozc dbus-x11 x11-xserver-utils libfuse2
sudo update-locale LANG=ja_JP.UTF8
sudo sh -c "dbus-uuidgen > /var/lib/dbus/machine-id"

# Install JetBrains Toolbox
VERSION="2.3.1.31116"
INSTALL_DIR="${HOME}/opt"

mkdir -p "${INSTALL_DIR}"
cd "${INSTALL_DIR}"
curl -L "https://download.jetbrains.com/toolbox/jetbrains-toolbox-${VERSION}.tar.gz" -o "jetbrains-toolbox-${VERSION}.tar.gz"
tar zxf jetbrains-toolbox-${VERSION}.tar.gz
rm jetbrains-toolbox-${VERSION}.tar.gz
