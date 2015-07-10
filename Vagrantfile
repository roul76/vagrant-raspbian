Vagrant.configure(2) do |config|
  config.vm.define "raspbian" do |raspbian|
    raspbian.vm.box = "ARTACK/debian-jessie"

    config.vm.provider "virtualbox" do |vbox|
      vbox.memory = 512
      vbox.cpus = 2
    end
  end

  config.vm.provision :shell, path: "raspbianize.sh"
end
