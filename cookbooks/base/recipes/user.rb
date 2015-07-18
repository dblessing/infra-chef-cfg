include_recipe 'user::data_bag'

execute 'ssh-keygen -t ed25519' do
  command "/usr/bin/ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ''"
  not_if { ::File.exist? '/etc/ssh/ssh_host_ed25519_key' }
end

firewall_rule 'ssh' do
  protocol :tcp
  port     22
  action   :allow
end
