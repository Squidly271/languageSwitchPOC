#!/bin/bash

mkdir -p "/tmp/GitHub/languageSwitchPOC/source/languageSwitchPOC/usr/local/emhttp/plugins/languageSwitchPOC/"

cp /usr/local/emhttp/plugins/languageSwitchPOC/* /tmp/GitHub/languageSwitchPOC/source/languageSwitchPOC/usr/local/emhttp/plugins/languageSwitchPOC -R -v -p
cd /tmp/GitHub/languageSwitchPOC/source/languageSwitchPOC/usr/local/emhttp/plugins/languageSwitchPOC
# Delete Apple Metadata files
find . -maxdepth 9999 -noleaf -type f -name "._*" -exec rm -v "{}" \;
rm -f  ca.md5
find . -type f -exec md5sum {} + > /tmp/ca.md5
mv /tmp/ca.md5 ca.md5


