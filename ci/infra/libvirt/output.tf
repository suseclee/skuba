output "ip_masters" {
  value = zipmap(
    libvirt_domain.master.*.network_interface.0.hostname,
    libvirt_domain.master.*.network_interface.0.addresses.0,
  )
}


