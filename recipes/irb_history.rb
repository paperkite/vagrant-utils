#
# Cookbook Name:: paperkite-vagrant-utils
# Recipe:: irb_history
#
# Configures IRB to save history between sessions

cookbook_file "/home/vagrant/.irb" do
  source "irb_history.rb"
  owner "vagrant"
  group "vagrant"
  mode "755"
  action :create
end
