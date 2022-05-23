#!/bin/sh

cd db1000nX100/source-code/docker/db1000nX100-for-docker/ || exit 1
cd for-macOS-and-Linux-hosts/ || exit 1
chmod +x update-and-run.bash
chmod +x run.bash
./update-and-run.bash