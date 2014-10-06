# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'ubuntu/trusty32'
  
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  #config.vm.network :public_network

  config.vm.synced_folder "../data", "/home/vagrant/data"

  config.vm.provision :puppet do |puppet|
      puppet.module_path = 'puppet/modules'
      puppet.manifests_path = 'puppet/manifests'
      puppet.manifest_file  = 'default.pp'
  end
end
