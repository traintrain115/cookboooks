#
# Cookbook Name:: first
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


cookbook_file '/tmp/test.txt' do
  source 'test.txt'
  owner 'ec2-user'
  group 'ec2-user'
  mode '0755'
  action :create
end

data=data_bag_item( 'samp.json', 'staging')
template '/tmp/templatefile' do
  source 'samp.erb'
  variables( :tempVar => data['staging']['tempVar']  )
end
