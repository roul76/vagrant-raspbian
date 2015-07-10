#!/usr/bin/env bash

echo "raspbianizing ..."

hostnamectl set-hostname pi

echo -e "raspbian\nraspbian\n" | passwd root

sed -i 's/debian/pi/' /etc/hosts

sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart

echo "... raspbianized!"
