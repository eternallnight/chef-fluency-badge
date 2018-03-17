#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[posgresql-initi]'
end

execute 'postgresql-init' do
	command 'postgregsql-setup initdb'
	action :nothing
end

service 'postgresql' do
	action [:enable, :start]
end
