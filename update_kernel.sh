#!/bin/bash

make -j 16
if [ $# -ne 2 ];
then 
	new_kernel_name=bzImage.$1.`date +%Y-%m-%d-%H-%M-%S`
else
	new_kernel_name=bzImage.`date +%Y-%m-%d-%H-%M-%S`
fi
cp arch/x86/boot/bzImage /boot/$new_kernel_name
ln -sf /boot/$new_kernel_name /boot/bzImage-test
