require 'erb'

prefix = 'app_'
hosts = File.open('/etc/hosts').read.each_line.map(&:split).map { |ip, host, *rest| host }.select {|host| host.start_with?(prefix)}

config = File.open('/etc/nginx/conf.d/default.conf', 'w')
template = File.open('/opt/scripts/default.conf.erb').read
config.write(ERB.new(template).result)
config.close
