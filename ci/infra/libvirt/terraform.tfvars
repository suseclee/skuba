
libvirt_uri = "qemu:///system"
pool =  "default"
image_uri = "SLES15-SP1-JeOS.x86_64-OpenStack-Cloud.qcow2"
stack_name = "clee"
#network_cidr = "10.17.0.0/22"
network_cidr = "192.168.0.0/22"

masters = 1
workers = 0
dns_domain = "caasp.local"
username = "sles"
password = "linux"

master_vcpu = 4
master_memory = 16384
master_disk_size = 8589934592


repositories = {
	caasp_devel = "http://ibs-mirror.prv.suse.net/ibs/Devel:/CaaSP:/4.0/SLE_15_SP1/",
        suse_ca = "http://ibs-mirror.prv.suse.net/ibs/SUSE:/CA/SLE_15_SP1/",
        sle_server_pool = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Products/SLE-Product-SLES/15-SP1/x86_64/product/",
        basesystem_pool = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Products/SLE-Module-Basesystem/15-SP1/x86_64/product/",
        containers_pool = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Products/SLE-Module-Containers/15-SP1/x86_64/product/",
        serverapps_pool = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Products/SLE-Module-Server-Applications/15-SP1/x86_64/product/",
        sle_server_updates = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Updates/SLE-Product-SLES/15-SP1/x86_64/update/",
        basesystem_updates = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Updates/SLE-Module-Basesystem/15-SP1/x86_64/update/",
        containers_updates = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Updates/SLE-Module-Containers/15-SP1/x86_64/update/",
        serverapps_updates = "http://ibs-mirror.prv.suse.net/ibs/SUSE/Updates/SLE-Module-Server-Applications/15-SP1/x86_64/update/"
}

packages = [
  "kernel-default",
  "-kernel-default-base",
  "ca-certificates-suse"
]


authorized_keys = [
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDPzn3riz+xnzuuEEsc8o8OGAZqw66b3A3U4ZnHU8DvLp1ysQN5fgxClU4sYmsz3+1yaR5F18NB6JWAANx5V5VtENRwuK2QZtXZX67Jw5NVm+u3fTOhP5m+2WYY+lfMW82DoY+OQ1566ruvFQyph1OqJeJ7A46WctL3YiogjT14DpZCIAYagSQHjVfnWZqtdkXmQatZdjZ7otx7OEP2lUK/SF9Dl2LZma9yuC7M1IpwHHRLK9pzGB3U0i00t9dnA8PlE1DlhmsF7J9M8PCBKfW9+0CymdNJDaC1f2ePHWlwoJ3qNL1eh0FmdmiikILkKY0sXPRnD4bDVX0p4m/b5ZHH chang@linux-hzdc"
]

ntp_servers = ["0.novell.pool.ntp.org", "1.novell.pool.ntp.org", "2.novell.pool.ntp.org", "3.novell.pool.ntp.org"]
