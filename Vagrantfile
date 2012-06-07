# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.define :puppetmaster do |cfg|
    cfg.vm.host_name = "puppet-master.local"
    cfg.vm.network :hostonly, "192.168.2.10"

    cfg.vm.provision :shell, :path => "scripts/setup-puppet-master.sh"
  end

  config.vm.define :puppetagent do |cfg|
    cfg.vm.host_name = "puppet-agent.local"
    cfg.vm.network :hostonly, "192.168.2.11"

    cfg.vm.provision :shell, :path => "scripts/setup-puppet-agent.sh"
  end
end
