Vagrant.configure(2) do |config|

  config.vm.box = "williamyeh/ubuntu-trusty64-docker"

  config.vm.provision "shell", inline: <<-SHELL
    cd /vagrant
    docker build .
  SHELL

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    #vb.gui = true
  end

end
