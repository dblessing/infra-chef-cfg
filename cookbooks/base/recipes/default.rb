include_recipe 'ubuntu'
include_recipe 'sudo'
include_recipe 'git'
include_recipe 'papertrail'
include_recipe 'fail2ban'

firewall 'ufw' do
  action :enable
end

# sub-recipes
include_recipe 'base::chef'
include_recipe 'base::consul'
include_recipe 'base::user'

# useful tools
package 'iotop'
package 'lsof'
package 'netcat'
package 'socat'
package 'strace'
package 'tcpdump'
package 'tmux'
package 'vim-tiny'
