include_recipe 'knot_dns::iptables'

apt_repository 'knot_dns' do
  uri node[self.cookbook_name][:apt_repo][:url]
  distribution node[self.cookbook_name][:apt_repo][:dist]
  components node[self.cookbook_name][:apt_repo][:components]
end

package node[self.cookbook_name][:apt_repo][:pkg_name] do
  version node[:knot_dns][:apt_repo][:version]
end

service node[self.cookbook_name][:apt_repo][:pkg_name] do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
