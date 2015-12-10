# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "pinpoint-box"
  config.vm.provision "file", source: "./getJavaSet.sh", destination: "getJavaSet.sh"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080
   config.vm.network "forwarded_port", guest: 28080, host: 28080
   config.vm.network "forwarded_port", guest: 28081, host: 28081

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
   config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
   	sudo ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime
        sudo yum -y update
   	sudo yum -y install git
   	git clone https://github.com/naver/pinpoint	
   	sudo chown -R vagrant:vagrant pinpoint/ 
   	sudo chown vagrant:vagrant getJavaSet.sh
	./getJavaSet.sh
        mv JavaSet.* JavaSet.tar
        sudo chown vagrant:vagrant JavaSet.tar
        tar -xvf JavaSet.tar
  	rm -rf JavaSet.tar
	mkdir scripts
   	sudo chown -R vagrant:vagrant scripts/ 
        mv *.sh ./scripts
	sudo JavaSet/jdk-6u45-linux-x64-rpm.bin
	sudo mv /usr/java/jdk1.6.0_45 /usr/local
	sudo ln -s /usr/local/jdk1.6.0_45 /usr/local/java6
   	sudo tar -xvf JavaSet/jdk-7u79-linux-x64.gz -C /usr/local
	ln -s /usr/local/jdk1.7.0_79 /usr/local/java7
        sudo tar -xvf JavaSet/jdk-8u65-linux-x64.gz -C /usr/local
        sudo ln -s /usr/local/jdk1.8.0_65 /usr/local/java8
	sudo tar -xvf JavaSet/apache-maven-3.3.9-bin.tar.gz -C /usr/local
        sudo ln -s /usr/local/apache-maven-3.3.9 /usr/local/maven3.3
	rm -rf *.rpm
   SHELL
end
