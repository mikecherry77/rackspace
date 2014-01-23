#
# Cookbook Name:: rackspace
# Recipe:: default
#
# Copyright 2014, mike cherry
#
# All rights reserved - Do Not Redistribute
#

package "apache2" do
	action :install
end

cookbook_file "sshd_config" do
	path "/etc/ssh/sshd_config"
	action :create
	notifies :restart, "service[ssh]"
end

service "ssh" do
	action :nothing
 	supports :status => true, :start => true, :stop => true, :restart => true
end

