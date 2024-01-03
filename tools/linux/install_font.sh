#!/bin/bash
set -euo pipefail

curl -L https://github.com/yuru7/HackGen/releases/download/v2.9.0/HackGen_NF_v2.9.0.zip -o /tmp/HackGen_NF_v2.9.0.zip
unzip /tmp/HackGen_NF_v2.9.0.zip -d /tmp
rm /tmp/HackGen_NF_v2.9.0.zip

mkdir -p ${HOME}/.local/share/fonts
mv /tmp/HackGen_NF_v2.9.0 ${HOME}/.local/share/fonts/HackGenNF

fc-cache -fv
