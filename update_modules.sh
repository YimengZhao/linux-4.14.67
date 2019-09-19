#!/bin/bash

make -j 16

new_vhost_name=vhost.`date +%Y-%m-%d-%H-%M-%S`
new_net_name=vhost-net.`date +%Y-%m-%d-%H-%M-%S`
cp ./drivers/vhost/vhost.ko /root/modules/$new_vhost_name.ko
cp ./drivers/vhost/vhost_net.ko /root/modules/$new_net_name.ko
ln -sf /root/modules/$new_vhost_name.ko /root/modules/vhost.ko
ln -sf /root/modules/$new_net_name.ko /root/modules/vhost-net.ko
