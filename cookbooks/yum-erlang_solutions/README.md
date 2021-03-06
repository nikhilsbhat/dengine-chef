# yum-erlang_solutions Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/yum-erlang_solutions.svg?branch=master)](http://travis-ci.org/chef-cookbooks/yum-erlang_solutions) [![Cookbook Version](https://img.shields.io/cookbook/v/yum-erlang_solutions.svg)](https://supermarket.chef.io/cookbooks/yum-erlang_solutions)

The yum-erlang_solutions cookbook takes over management of the default repositoryids used by erlang_solutions. It allows attribute manipulation of `erlang_solutions`.

## Requirements

### Platforms

- RHEL/CentOS and derivatives
- Fedora

### Chef

- Chef 12.1+

### Cookbooks

- compat_resource

## Attributes

The following attributes are set by default

```ruby
default['yum']['erlang_solutions']['baseurl'] = "http://packages.erlang-solutions.com/rpm/centos/#{platform_version.to_i}/$basearch"
default['yum']['erlang_solutions']['description'] = "Centos #{platform_version.to_i} - $basearch - Erlang Solutions"
default['yum']['erlang_solutions']['gpgkey'] = 'http://packages.erlang-solutions.com/debian/erlang_solutions.asc'
default['yum']['erlang_solutions']['enabled'] = true
```

## Recipes

- default - Walks through node attributes and feeds a yum_resource
- parameters. The following is an example a resource generated by the
- recipe during compilation.

```ruby
  yum_repository 'erlang_solutions' do
    baseurl 'http://packages.erlang-solutions.com/rpm/centos/#{platform_version.to_i}/$basearch'
    description 'Centos #{platform_version.to_i} - $basearch - Erlang Solutions'
    enabled true
    gpgcheck true
    gpgkey 'http://packages.erlang-solutions.com/debian/erlang_solutions.asc'
  end
```

## Usage Example

To disable the erlang_solutions repository through a Role or Environment definition

```ruby
default_attributes(
  :yum => {
    :erlang_solutions => {
      :enabled => {
        false
       }
     }
   }
 )
```

To enable the erlang_solutions repository with a wrapper cookbook, place the following in a recipe:

```ruby
node.default['yum']['erlang_solutions']['enabled'] = true
include_recipe 'yum-erlang_solutions'
```

## More Examples

Point the erlang_solutions repositories at an internally hosted server.

```ruby
node.default['yum']['erlang_solutions']['enabled'] = true
node.default['yum']['erlang_solutions']['baseurl'] = 'https://internal.example.com/erlang_solutions'
node.default['yum']['erlang_solutions']['sslverify'] = false

include_recipe 'yum-erlang_solutions'
```

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

**Copyright:** 2011-2016, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
