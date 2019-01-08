Vagrant.require_version ">= 1.7.0"

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  
  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"

  config.vm.define :web1 do |web_config|
      web_config.vm.host_name = "web1"
      web_config.vm.network "private_network", ip:"192.168.100.9"
      web_config.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024"]
          vb.customize ["modifyvm", :id, "--cpus", "1"]
      end
  end

  config.vm.define :web2 do |web_config|
      web_config.vm.host_name = "web2"
      web_config.vm.network "private_network", ip:"192.168.100.10"
      web_config.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024"]
          vb.customize ["modifyvm", :id, "--cpus", "1"]
      end
  end

  config.vm.define :web3 do |web_config|
      web_config.vm.host_name = "web3"
      web_config.vm.network "private_network", ip:"192.168.100.11"
      web_config.vm.provider :virtualbox do |vb|
          vb.customize ["modifyvm", :id, "--memory", "1024"]
          vb.customize ["modifyvm", :id, "--cpus", "1"]
      end
  end

end
