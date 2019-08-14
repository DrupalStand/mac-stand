Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"

  config.vm.network "private_network", ip: "192.168.33.11"
  config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }
  
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 443, host: 8443
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  config.vm.provider "virtualbox" do |v|
    v.memory = 4048
    v.cpus = 2
  end

  config.vm.provision "shell", path: "bootstrap.sh"

end
