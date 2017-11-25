# frozen_string_literal: true

include_recipe 'apt'

node['docker_engine']['apt']['repo'].each_pair do |name, opts|
  apt_repository name do
    uri opts['uri']
    arch opts['arch']
    distribution opts['dist']
    components opts['components']
    key opts['key'] if opts.key?('key')
    keyserver opts['keyserver'] if opts.key?('keyserver')
    action :remove if opts['remove']
  end
end

docker_installation_package 'default' do
  version node['docker_engine']['version']
  package_name 'docker-ce'
  action :create
end
