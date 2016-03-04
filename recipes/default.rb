#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2016, Ares
#
# All rights reserved - Do Not Redistribute
#

if node[:etc][:passwd][node[:user]].nil?
  group node[:user] do
    gid    1000
  end

  package 'zsh'

  user node[:user] do
    uid 1000
    gid 1000
    home "/home/#{node[:user]}"
    manage_home true
    # password: a
    password "$1$G84UCPHI$t37/n6RXuF5Nc5/uidFZW."
    shell "/bin/zsh"
  end
end
