include_recipe 'knot_dns::iptables'

apt_repository 'knot_dns' do
  uri node[self.cookbook_name][:apt_repo][:url]
  distribution node[self.cookbook_name][:apt_repo][:dist]
  components node[self.cookbook_name][:apt_repo][:components]
end

package node[self.cookbook_name][:apt_repo][:pkg_name] do
end
