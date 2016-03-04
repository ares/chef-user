name             'user'
maintainer       'Ares'
maintainer_email 'ar3s.cz@gmail.com'
license          'All rights reserved'
description      'Installs/Configures user so others cookbook can rely on them'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

attribute 'user',
          :display_name => 'User login',
          :description => 'The login of primary user',
          :type => 'string',
          :required => 'recommended',
          :default => 'ares'
