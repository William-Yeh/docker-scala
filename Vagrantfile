# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"


#
# provision script; pull Docker image
#
$script = <<SCRIPT
echo Downloading Docker container: 'williamyeh/docker-scala' ...
echo This may take minutes...

docker pull williamyeh/docker-scala
if [[ $? -eq 0 ]]; then
  echo Done.
else
  echo ERROR when pulling Docker container!
fi
SCRIPT



Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "yungsang/coreos"

  config.vm.provision :shell, :inline => $script

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    #vb.gui = true
  end

end
