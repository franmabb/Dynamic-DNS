Vagrant.configure("2") do |config|

  
  config.vm.box = "ubuntu/bionic64"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/main.yml"
    ansible.inventory_path = "inventory.ini"
  end

  # Definición de la red privada común
  private_net = "192.168.58.0"
  netmask = "255.255.255.0"

  # Servidor DNS (dns)
  config.vm.define "dns" do |dns|
    dns.vm.hostname = "dns.example.test"
    dns.vm.network "private_network",
      ip: "192.168.58.10", # IP del servidor DNS [cite: 8]
      virtualbox__intnet: "private_network_ddns"
  end

  # Servidor DHCP (dhcp)
  config.vm.define "dhcp" do |dhcp|
    dhcp.vm.hostname = "dhcp.example.test"
    dhcp.vm.network "private_network",
      ip: "192.168.58.20", # IP del servidor DHCP [cite: 9]
      virtualbox__intnet: "private_network_ddns"
  end

  # Cliente (cl)
  config.vm.define "cl" do |cl|
    cl.vm.hostname = "cliente1"
    cl.vm.network "private_network",
      auto_config: false, # Deshabilita la configuración automática para que DHCP le asigne una IP [cite: 12]
      virtualbox__intnet: "private_network_ddns"
  end

end