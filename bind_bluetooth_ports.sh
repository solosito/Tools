#!/bin/sh

# Bluetooth manager
#
# 	bluetoothctl

# Enable rfcomm
# 
# 	sudo modprobe rfcomm

# Bind bluetoth ports to MACs
sudo rfcomm bind rfcomm1 00:18:E4:0A:00:01
sudo rfcomm bind rfcomm2 00:21:13:00:CB:2D
sudo rfcomm bind rfcomm3 00:21:13:00:CF:AD
sudo rfcomm bind rfcomm7 20:13:06:24:01:80