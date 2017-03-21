name 'yum-chef'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Configures yum repository for Chef Software, Inc. products'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.0.1'

depends 'compat_resource', '>= 12.16.3'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-chef'
issues_url 'https://github.com/chef-cookbooks/yum-chef/issues'
chef_version '>= 12.1' if respond_to?(:chef_version)
