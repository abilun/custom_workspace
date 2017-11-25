# frozen_string_literal: true

name             'custom_workspace'
maintainer       'Artyom Bilun'
maintainer_email 'bilun.art@gmail.com'
license          'All rights reserved'
description      'Installs/Configures custom setup'
long_description 'Installs/Configures custom setup'
# issues_url       'https://git....' if respond_to?(:issues_url)
# source_url       'https://git....' if respond_to?(:source_url)
version          '0.3.1'

depends 'docker', '>= 2.15'
depends 'apt'
depends 'poise-python'

supports 'debian'

chef_version '>= 12.2'
