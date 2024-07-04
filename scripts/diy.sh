#!/bin/bash

#更改默认地址为192.168.6.1
sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate

#添加easymesh
echo 'src-git luci-app-easymesh https://github.com/shuishihan/easymesh.git' >> feeds.conf.default
#添加luci-app-adguardhome
echo 'src-git luci-app-adguardhome https://github.com/rufengsuixing/luci-app-adguardhome.git' >> feeds.conf.default
# istore
echo 'src-git istore https://github.com/linkease/istore;main' >> feeds.conf.default
echo 'src-git nas https://github.com/linkease/nas-packages.git;master' >> feeds.conf.default
echo 'src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' >> feeds.conf.default
