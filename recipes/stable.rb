#
# Cookbook Name:: yum-chef
# Recipe:: stable
#
# Author:: Joshua Timberman <joshua@chef.io>
# Copyright (c) 2015, Chef Software, Inc. <legal@chef.io>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

yum_repository 'chef-stable' do
  description 'Chef chef-stable repository'
  baseurl "https://packagecloud.io/chef/stable/el/#{node['platform_version'].split('.').first}/$basearch"
  gpgkey node['yum-chef']['gpgkey']
  sslcacert node['yum-chef']['sslcacert']
  proxy node['yum-chef']['proxy']
  proxy_username node['yum-chef']['proxy_username']
  proxy_password node['yum-chef']['proxy_password']
  sslverify node['yum-chef']['sslverify']
  gpgcheck node['yum-chef']['gpgcheck']
  action :create
end
