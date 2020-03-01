#!/usr/bin/env bash

echo "raspbianizing: "
echo "- setting hostname to 'pi'"
hostnamectl set-hostname pi
sed -i 's/debian/pi/' /etc/hosts

echo "- changing root password to 'raspbian'"
echo -e "raspbian\nraspbian\n" | passwd root >/dev/null 2>&1

echo "- changing sshd_config to allow root login and password auth"
sed -i '
  s/^[#]*PermitRootLogin.*$/PermitRootLogin yes/;
  s/^[#]*PasswordAuthentication.*$/PasswordAuthentication yes/
' /etc/ssh/sshd_config

echo "- restarting sshd"
systemctl restart sshd

echo "... done!"
