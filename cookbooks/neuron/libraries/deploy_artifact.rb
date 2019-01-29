require 'chef/knife'
require 'fileutils'
require 'artifactory'

module DeployArtifact

  include Artifactory::Resource

  def arti_deploy(app_name,art_version,arti_ip,art_username,art_passwd)

    download_path = '/var/deploy/tmp'
    
    if ensure_dir(download_path) == true

      download_artifact(app_name,art_version,arti_ip,download_path,art_username,art_passwd)

    else

      Chef::Log.info("====================================")
      Chef::Log.info("The artifactory download path: '#{download_path}' is not created by chef, even though I'll download in required location")
      Chef::Log.info("")
      Chef::Log.info("Artifact download in progress")
      Chef::Log.info(".")
      Chef::Log.info(".")
      download_artifact(app_name,art_version,arti_ip,download_path,art_username,art_passwd)
      Chef::Log.info("Artifact downloaded successfully")
      Chef::Log.info("====================================")
      Chef::Log.info("")

    end

  end

  def download_artifact(app_name,art_version,arti_ip,download_path,art_username,art_passwd)

    Artifactory.configure do |config|
    config.endpoint = "http://#{arti_ip}:8081/artifactory/"
    config.username = art_username
    config.password = art_passwd
    end

    artifact = Artifact.search(name: "#{app_name}-#{art_version}-#{art_version}.war").first
    artifact.download(download_path)
#    FileUtils.cp_r "#{download_path}/#{app_name}-#{art_version}-#{art_version}.war", '/var/deploy/current'
    FileUtils.cp_r "#{download_path}/#{app_name}-#{art_version}-#{art_version}.war", '/opt/special/tomcat_docs/webapps'

  end

  def ensure_dir(download_path)

    if Dir.exists? "#{download_path}"
      return true
    else
      return false
    end

  end

end
