#!/bin/sh
# shellcheck disable=SC2117

# Curl
apt-get install curl

# Pip 3
apt install python3-pip

# Docker
apt-get install ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

chmod a+r /usr/share/keyrings/docker-archive-keyring.gpg
apt-get update
apt-get install docker.io

# db1000nX100
cd ~ || exit 1
git clone https://github.com/ihorlv/db1000nX100.git
cd db1000nX100/source-code/docker/db1000nX100-for-docker/ || exit 1

# ovpn_downloader https://github.com/sikrinick/ovpn_downloader https://x100.vn.ua/ovpn-download-scripts/
git clone https://github.com/sikrinick/ovpn_downloader.git
cd ovpn_downloader || exit 1
pip3 install -r requirements.txt
cd .. || exit 1

# ovpn: https://x100.vn.ua/db1000nx100-ovpn-files/
cd put-your-ovpn-files-here || exit 1
python3 ../ovpn_downloader/run.py
echo "If your VPN provider requires credentials, please, create credentials.txt in related folders"
echo "If your VPN provider has limitations, please, create vpn-provider-config.txt in related folders"
echo "For more information visit https://x100.vn.ua/db1000nx100-ovpn-files/"
cd .. || exit 1

# launch https://x100.vn.ua/db1000nx100-in-docker-linux/
cd for-macOS-and-Linux-hosts/ || exit 1
chmod +x update-and-run.bash
chmod +x run.bash