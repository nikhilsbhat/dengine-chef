name             'neuron'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'nikhibt434@gmail.com'
license          'All rights reserved'
description      'Installs/Configures dengine'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
min_version = `git log -n 1 --pretty=format:'%ct' #{File.dirname(__FILE__)} 2> /dev/null`
version          '0.1.0' + min_version

gem "artifactory"
depends 'neuron_tomcat'
