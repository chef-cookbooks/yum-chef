# yum-chef

Sets up the default yum package repository for Chef Software, Inc. products.

Primarily intended to be consumed by the chef-ingredient cookbook

## Requirements

## Cookbooks

- yum

## Platform

Only supports RHEL-family. May work on Fedora or Amazon Linux. Other platforms don't make sense with yum repositories. However, not all platforms that this cookbook will work on have supported packages from the repository. See [supported platforms](https://docs.chef.io/supported_platforms.html). Users may need to override attributes in roles or wrapper cookbooks to get this to work, or write their own cookbooks entirely.

## Attributes

The `attributes/default.rb` file contains comments with all the attributes that can be set to control how this cookbook sets up the repository.

## License and Author

- Author: Joshua Timberman <joshua@chef.io>
- Copyright (C) 2015, Chef Software Inc. <legal@chef.io>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
