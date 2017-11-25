# frozen_string_literal: true

default['virtualbox']['uri'] = "http://download.virtualbox.org/virtualbox/#{node['platform']}/"
default['virtualbox']['dist'] = node['lsb']['codename']
default['virtualbox']['components'] = %w[contrib]
default['virtualbox']['key'] = 'https://www.virtualbox.org/download/oracle_vbox_2016.asc'
