# -*- mode: ruby -*-
# vi: set ft=ruby :
 
# Vagrant version 1.1.5
 
Vagrant.configure("2") do |config|
 
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  
  config.vm.provision :shell, :path => "init.sh"
  config.vm.network :forwarded_port, guest: 9200, host: 9200
 
end