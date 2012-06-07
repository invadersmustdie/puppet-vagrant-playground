echo "192.168.2.10    puppet-master.local" >> /etc/hosts

puppet agent --server puppet-master.local
