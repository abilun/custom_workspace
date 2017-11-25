# frozen_string_literal: true

require 'docker'
require 'serverspec'

set :backend, :exec

image_name = 'e3s_rmq'
image_version = '1.9.32'
registry_name = 'registry.e3s.epam.com:5000'

%w[apt-transport-https ca-certificates].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

describe file('/etc/apt/sources.list.d/docker.list') do
  it { should be_file }
end

describe command("docker pull #{registry_name}/#{image_name}:#{image_version}") do
  its(:stdout) { should contain("Status: Downloaded newer image for #{registry_name}/#{image_name}:#{image_version}") }
end

describe command("docker run #{registry_name}/#{image_name}:#{image_version}") do
  its(:exit_status) { should eq 0 }
end

describe docker_container("#{registry_name}/#{image_name}:#{image_version}") do
  it { should be_running }
end
