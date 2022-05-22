# Automated setup tool for db1000nX100

[db1000nX100](https://x100.vn.ua/) is a product based on a [db1000n](https://arriven.github.io/db1000n/)
for DDoS attacks on russian online services and commercial infrastructure.

[GitHub repo of db1000nX100](https://github.com/ihorlv/db1000nX100)  
[GitHub repo of db1000n](https://github.com/Arriven/db1000n)

Suitable for Cloud providers, tested only on Digital Ocean.

## The next setup tool provides next features:
- Installs Curl
- Installs Python 3 requirements
- Installs Docker and keyrings
- Clones [db1000nX100](https://github.com/ihorlv/db1000nX100.git)
- Clones [ovpn_downloader](https://github.com/sikrinick/ovpn_downloader.git)
- Downloads OpenVPN configurations for supported providers 
- Update on demand

However, you have to enter credentials by hand. 

## Limitations
Those scripts provide minimal setup.  
Currently supported VPN providers by this setup script, as it is based on [OpenVPN Downloader](https://github.com/sikrinick/ovpn_downloader):
- Ghost Path 

## Setup
```shell
git clone https://github.com/sikrinick/autosetup-db1000nX100.git
cp autosetup-db1000nX100/*.sh .
sudo chmod +x setup.sh
sudo ./setup.sh
# put credentials to correspondent VPN provider folder.
# For example:
# echo -e "username\npassword" > \
#   ~/db1000nX100/source-code/docker/db1000nX100-for-docker/put-your-ovpn-files-here/ghost_path/credentials.txt
```

## Update
```shell
sudo chmod +x update.sh
sudo ./update.sh
# put credentials to correspondent VPN provider folder.
# For example:
# echo -e "username\npassword" > \
#   ~/db1000nX100/source-code/docker/db1000nX100-for-docker/put-your-ovpn-files-here/ghost_path/credentials.txt
```

## Run
```shell
sudo chmod +x run.sh
sudo ./run.sh
```