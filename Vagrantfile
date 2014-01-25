VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
 
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :forwarded_port, guest: 9200, host: 9200
  
  config.vm.provider :virtualbox do |vbox|
    vbox.customize ["modifyvm", :id, "--memory", 1048]
  end
  
  config.vm.provision :shell, :path => "init.sh"
 
end