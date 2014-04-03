default[:knot_dns][:apt_repo][:url] = 'http://ppa.launchpad.net/cz.nic-labs/knot-dns/ubuntu'
default[:knot_dns][:apt_repo][:dist] = node[:lsb][:codename]
default[:knot_dns][:apt_repo][:components] = ['main']
default[:knot_dns][:apt_repo][:pkg_name] = 'knot'
