#
# Cookbook Name:: server
# Recipe:: default
#
# Copyright 2013, Issei Murasawa
#

# Turns timezone into Asia/Tokyo
execute 'set-timezone-jst' do
  command 'cp /usr/share/zoneinfo/Japan /etc/localtime'
  action :run
end

# Kills and stops iptables service
service 'iptables' do
  action [:stop, :disable]
end
