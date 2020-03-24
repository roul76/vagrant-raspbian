Vagrant.configure(2) do |config|

  config.vm.define "raspbian" do |raspbian|
    raspbian.vm.box = "debian/stretch64"

    config.vm.provider "virtualbox" do |vbox|
      vbox.memory = 512
      vbox.cpus = 1
    end
  end

  # MacBook: export VAGRANT_BRIDGE_NETWORK_ADAPTER="en0: WLAN (AirPort)"
  # others:  export VAGRANT_BRIDGE_NETWORK_ADAPTER="enp1s0"

  config.vm.network "public_network", bridge: ENV['VAGRANT_BRIDGE_NETWORK_ADAPTER'], mac: "080027000001"
  config.vm.provision :shell, path: "raspbianize.sh"
  config.vm.provision :reload
end
