# frozen_string_literal: true

require 'spec_helper'

describe 'e3s-docker-engine::default' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'debian', version: '9.0').converge(described_recipe)
  end

  it 'enables and starts docker service' do
    expect(chef_run).to enable_service('docker')
  end

  it 'installs docker package' do
    expect(chef_run).to install_package('docker-ce')
  end
end
