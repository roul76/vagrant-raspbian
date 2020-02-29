#!/usr/bin/env bash

echo "raspbianizing ..."

hostnamectl set-hostname pi

echo -e "raspbian\nraspbian\n" | passwd root

sed -i 's/debian/pi/' /etc/hosts

sed -i '
  s/^[#]*PermitRootLogin.*$/PermitRootLogin yes/;
  s/^[#]*PasswordAuthentication.*$/PasswordAuthentication yes/
' /etc/ssh/sshd_config
service ssh restart

echo "... raspbianized!"
