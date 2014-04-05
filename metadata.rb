name              "knot_dns"
maintainer        "Siliconvortex, Inc."
maintainer_email  "devops@siliconvortex.com"
license           "Apache 2.0"
description       "This cookbook compiles and installs knot-dns"
version           "1.0.0"

recipe "default", "Installs knot-dns from their repo"
%w{ubuntu}.each do |os|
  supports os
end

depends 'iptables', '>= 0.12.0'
depends 'apt', '>= 2.3.8'
depends 'zonefile', '>= 0.9.2'
