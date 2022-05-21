#!/bin/sh

cd ~ || exit 1

cd autosetup-db1000nX100 || exit 1
git fetch origin master
git reset --hard FETCH_HEAD
git clean -df
cd ..
cp autosetup-db1000nX100/*.sh .

cd db1000nX100 || exit 1
git fetch origin master
git reset --hard FETCH_HEAD
git clean -df
cd .. || exit 1

cd db1000nX100/source-code/docker/db1000nX100-for-docker/ || exit 1

cd for-macOS-and-Linux-hosts/ || exit 1
./update-and-run.bash
cd .. || exit 1

cd ovpn_downloader || exit 1
git fetch origin master
git reset --hard FETCH_HEAD
git clean -df
pip3 install -r requirements.txt
cd .. || exit 1

cd put-your-ovpn-files-here || exit 1
python3 ../ovpn_downloader/run.py
cd .. || exit 1
