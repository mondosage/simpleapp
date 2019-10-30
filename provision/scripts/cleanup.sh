#! /bin/bash

# Wipe all the logs
find /var/log/ -type f -exec truncate -s0 {} \;
truncate -s0 /root/.bash_history
truncate -s0 /home/admin/.bash_history

# Wipe the ssh keys
truncate -s0 /root/.ssh/authorized_keys
truncate -s0 /home/admin/.ssh/authorized_keys
shred -u /etc/ssh/*_key /etc/ssh/*_key.pub

apt clean
apt autoremove
