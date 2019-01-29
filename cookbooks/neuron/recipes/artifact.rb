#
# Cookbook Name:: dengine
# Recipe:: artifact
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

class Chef::Recipe
   include DeployArtifact
end

art_version  = node['application']['artifact']['version']
app_name     = node['application']['artifact']['name']
art_ip       = node['artifactory']['domain']['name']
art_username = node['artifactory']['domain']['username']
art_passwd   = node['artifactory']['domain']['password']

arti_deploy(app_name,art_version,art_ip,art_username,art_passwd)
