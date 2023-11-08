#!/bin/bash
sudo mkfs.ext4 /dev/sdb
sudo mkdir -p /mnt/sdb
sudo mount -t ext4 /dev/sdb /mnt/sdb
sudo echo "/dev/sdb /mnt/sdb ext4 defaults 0 0" >> /etc/fstab

