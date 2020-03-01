Vagrant.configure(2) do |config|

  config.vm.define "raspbian" do |raspbian|
    raspbian.vm.box = "debian/stretch64"

    config.vm.provider "virtualbox" do |vbox|
      vbox.memory = 512
      vbox.cpus = 1
    end
  end

  config.vm.network "public_network", bridge: "en0: WLAN (AirPort)", mac: "080027000001"
  config.vm.provision :shell, path: "raspbianize.sh"
  config.vm.provision :reload
end
