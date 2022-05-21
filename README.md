# Automated setup tool for db1000nX100
[](https://x100.vn.ua/)

<!--db1000nX100 – продукт на основі популярної української програми для проведення DDoS-атак по росії db1000n, який значно підвищує ефективність атаки (до 100 разів і навіть більше, звідси й X100 у назві).

Програма шляхом проведення массивних DDoS-атак знищує працездатність найважливіших для росії онлайн-сервісів, таких як: банки, держзакупівлі, тендери, системи звістностей та оплати податків тощо, створюючи прямі збитки для економіки країни-агресора.

Відчуй себе справжнім хакером, навіть якщо взагалі нічого в цьому не розумієш – програма все зробитиь за тебе. Цілі для атак визначають спеціалісти IT-армії, а програма отримує їх автоматично.

db1000nX100 є ОФІЦІЙНИМ інструментом IT-армії.-->

## 

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