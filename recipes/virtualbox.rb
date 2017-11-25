# frozen_string_literal: true

node['virtualbox']['repo'].each_pair do |name, opts|
  apt_repository name do
    uri opts['uri']
    arch opts['arch'] if opts.key?('arch')
    distribution opts['dist']
    components opts['components']
    key opts['key'] if opts.key?('key')
    keyserver opts['keyserver'] if opts.key?('keyserver')
    action :remove if opts['remove']
  end
end
