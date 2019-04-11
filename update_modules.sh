#!/bin/bash

make -j 16

cp ./drivers/vhost/vhost.ko /root/modules/vhost-$1.ko
ln -sf /root/modules/vhost-$1.ko /root/modules/vhost.ko
