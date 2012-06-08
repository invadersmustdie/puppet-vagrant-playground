echo "192.168.2.11    puppet-agent.local" >> /etc/hosts

puppet master --mkusers --autosign true

cp /vagrant/scripts/*.pp /etc/puppet/manifests
mkdir /etc/puppet/modules
cp -r /vagrant/modules/* /etc/puppet/modules
