


module "vsphere-vm-mk3" {
  source = "./modules/vsphere-vm-mk3"

  vsphere_user                 = var.vsphere_user
  vsphere_password             = var.vsphere_password
  vsphere_server               = var.vsphere_server
  vsphere_allow_unverified_ssl = var.vsphere_allow_unverified_ssl
  vsphere_datacenter           = var.vsphere_datacenter
  vsphere_datastore            = var.vsphere_datastore
  vsphere_compute_cluster      = var.vsphere_compute_cluster
  vsphere_network              = var.vsphere_network
  vsphere_template             = var.vsphere_template
  vm_name                      = var.vm_name
  vm_domain_name               = var.vm_domain_name
  vm_num_cpus                  = var.vm_num_cpus
  vm_memory                    = var.vm_memory
  vm_ipv4_address              = var.vm_ipv4_address
  vm_ipv4_netmask              = var.vm_ipv4_netmask
  vm_ipv4_gateway              = var.vm_ipv4_gateway
  vm_dns_server_list           = var.vm_dns_server_list
  vm_dns_suffix_list           = var.vm_dns_suffix_list

}


output "vm_ip_address" {
  value = module.vsphere-vm-mk3.vm_ip_address

}

output "vm_hostname" {
  value = module.vsphere-vm-mk3.vm_hostname

}
