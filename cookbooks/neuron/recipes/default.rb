#
# Cookbook Name:: neuron
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'neuron_tomcat::default'

include_recipe 'neuron::directory'

include_recipe 'neuron::artifact'

tomcat_service_sysvinit 'docs' do
  action [:enable]
  install_path '/opt/special/tomcat_docs/'
end
