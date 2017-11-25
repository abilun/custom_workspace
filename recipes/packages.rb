# frozen_string_literal: true

node['apt']['packages'].each do |package|
  package package.to_s do
    action :install
  end
end
