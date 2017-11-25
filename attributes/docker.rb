# frozen_string_literal: true

# Docker-engine version
default['docker_engine']['version'] = '17.06.2'

default['docker_compose']['version'] = '1.16.1'


# Docker repository settings
default['docker_engine']['apt']['repo']['docker']['uri'] = "https://download.docker.com/linux/#{node['platform']}"
default['docker_engine']['apt']['repo']['docker']['dist'] = node['lsb']['codename']
default['docker_engine']['apt']['repo']['docker']['arch'] = 'amd64'
default['docker_engine']['apt']['repo']['docker']['components'] = %w[stable]
default['docker_engine']['apt']['repo']['docker']['key'] = "https://download.docker.com/linux/#{node['platform']}/gpg"
