vagrant-raspbian
================

(Fork of matti/vagrant-raspbian)

Creates a machine that looks a little like raspbian based on debian/stretch64.
The VM will have bridged networking and thus can be accessed via `ssh root@pi` (password: `raspbian`).

Prerequisites
-------------

VirtualBox 6.1.4
Vagrant 2.2.7

Required Vagrant plugins
------------------------

vagrant-reload (Refer to https://bugzilla.redhat.com/show_bug.cgi?id=1539181#c6 if facing dependency problems)
```
vagrant plugin install vagrant-reload
```

Startup
-------

Just clone and then
```
cd vagrant-raspbian
vagrant up
```
