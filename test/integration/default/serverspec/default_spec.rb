require 'spec_helper'

describe 'yum-chef::default' do
  it 'has the chef-stable repository created' do
    expect(file('/etc/yum.repos.d/chef-stable.repo')).to be_file
  end

  it 'has the chef-sync package installed' do
    expect(package('chef-sync')).to be_installed
  end
end
