current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'chefcoe'
client_key               "#{current_dir}/.chef/chefcoe.pem"
validation_client_name   'chef-validator'
validation_key           "#{current_dir}/.chef/masterchefcoe-validator.pem"
chef_server_url          'https://ec2-XX-XXX-XXX-XXX.us-west-2.compute.amazonaws.com/organizations/chef'
cookbook_path            ["#{current_dir}/cookbooks"]
syntax_check_cache_path  "#{current_dir}../syntax_cache"
ssl_verify_mode    :verify_none

knife[:editor]   = "vi"
#knife[:supermarket_site] = "https://ec2-XX-XX-XX-XX.us-west-2.compute.amazonaws.com"
knife[:ssh_user] = 'ubuntu'
# The data required by knife to authenticate with AWS console/account
#knife[:aws_credential_file] = '/root/chef-repo/.chef/credentials/aws_credential_file'
knife[:aws_access_key_id]     = 'ALFJKJCFJFCJEFEFEC'
knife[:aws_secret_access_key] = 'CELFKNCKWJEFCURF/22lksjdc/wclfj/283/ikrfj'
knife[:identity_file]         = "#{current_dir}/.chef/new-iac-coe.pem"
knife[:ssh_key_name]          = 'chef-coe-ind-mind'
knife[:ssh_user]              = 'ubuntu'
knife[:winrm_port]            = '5985'
knife[:region]                = 'ap-south-1'
knife[:image]                 = 'ami-7c8ead13'
knife[:security_group_ids]    = 'launch-wizard-11'
knife[:ssh_port]              = 22

#------------------------azure  and openstack credentials--------------------------

knife[:azure_tenant_id] = "34lkfv4dklv3lk-3343242-14134er-vd123-a5e41061e661"
knife[:azure_subscription_id] = "34lkfv4dklv3lk-3343242-14134er-vd123-a5e41061e661"
knife[:azure_client_id] = "34lkfv4dklv3lk-3343242-14134er-vd123-a5e41061e661"
knife[:azure_client_secret] = "ceZBgXQoryOMGvK6txScc/TruRGaHucs9uayj8d/OtI="
knife[:azure_resource_group_name] = "Dengine"
knife[:azure_service_location] = "CentralIndia"

knife[:azure_image] = "ubuntu"

#---------------------openstack details----------------------------------
knife[:openstack_auth_url] = "https://sandbox.platform9.net/keystone/v2.0/tokens"
knife[:openstack_username] = "XXXXSS@gmail.com"
knife[:openstack_password] = "4XXXXXXXXXX24"
knife[:openstack_tenant] = "tenant-XXXXXXXXXXXXXXgmailcom"
knife[:openstack_region] = "US-West-KVM-01"

#knife[:ops_key]               = 'test_key'
knife[:network_ids]           = '957b9d64-a251-43a8-8716-8c6518e94861'
knife[:ops_image]             = 'bbdd7252-6298-d7ba-60ed-2d7454356ae1'

#-----------------------Google Cloud details-----------------------
knife[:gce_project] = "fit-aloe-179707"
knife[:gce_zone] = "us-central1-c"

knife[:gce_image] = "ubuntu-14-04"
#knife[:GOOGLE_APPLICATION_CREDENTIALS] = "/root/chef-repo/.chef/Project-ce1019e73f90.json"

#-------------------------------------------------------------------
#knife[:gateway_key] = "/var/lib/jenkins/chef-repo/.chef/google_key.ppk"
knife[:public_key]  = "/var/lib/jenkins/chef-repo/.chef/google_key"
