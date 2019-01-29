default['packer']['version'] = 1.2
default['packer']['sub_version'] = 4
default['packer']['platform'] = "linux"
default['packer']['user'] = "ubuntu"
default['packer']['mirror'] = '__https://releases.hashicorp.com/packer'
default['packer']['source'] = "#{node['packer']['mirror']}/"\
    "#{node['packer']['version']}.#{node['packer']['sub_version']}/"\
    "packer_#{node['packer']['version']}.#{node['packer']['sub_version']}_#{node['packer']['platform']}_amd64.zip"

#       __https://releases.hashicorp.com/packer/1.2.4/packer_1.2.4_linux_amd64.zip
