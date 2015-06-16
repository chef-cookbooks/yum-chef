require 'spec_helper'

describe 'yum-chef::default' do
  context 'cookbook attributes are set, on an unspecified platform' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.set['yum-chef'].tap do |yum|
          yum['repositoryid'] = 'chef-nightly'
          yum['baseurl'] = 'https://example.com/chef/nightly/5/$basearch'
          yum['gpgkey'] = 'https://example.com/package-public.key'
          yum['proxy'] = 'http://proxy.example.com:3128'
          yum['proxy_username'] = 'wornin'
          yum['proxy_password'] = 'illisit'
        end
      end.converge(described_recipe)
    end

    it 'renders the yum repository from attributes' do
      expect(chef_run).to create_yum_repository('chef-nightly').with(
        repositoryid: 'chef-nightly',
        baseurl: 'https://example.com/chef/nightly/5/$basearch',
        gpgkey: 'https://example.com/package-public.key',
        proxy: 'http://proxy.example.com:3128',
        proxy_username: 'wornin',
        proxy_password: 'illisit'
      )
    end
  end

  context 'centos-7.0' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(
        platform: 'centos',
        version: '7.0'
      ).converge(described_recipe)
    end

    it 'renders the yum repository with defaults' do
      expect(chef_run).to create_yum_repository('chef-stable').with(
        repositoryid: 'chef-stable',
        baseurl: 'https://packagecloud.io/chef/stable/el/7/$basearch'
      )
    end
  end
end
