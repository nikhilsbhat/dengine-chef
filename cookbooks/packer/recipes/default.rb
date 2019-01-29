#
# Cookbook:: packer
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Upadating the OS
execute 'apt-get update' do
  command 'sudo apt-get update'
end

# Download the packer Zip file
remote_file 'packer.zip' do
  source   node['packer']['source']
  action   :create
  user     node['packer']['user']
end

# Unzip the Downloaded Zip file
apt_package 'unzip' do
  action :install
end

execute 'extract packer.zip' do
  command 'sudo unzip packer.zip -d /usr/bin'
  user    node['packer']['user']
end

file 'packer.zip' do
  action :delete
end 
