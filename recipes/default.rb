#
# Cookbook Name:: linux-upstart
# Recipe:: default
#
# "Creative Commons BY 2017", Predictable Response Consulting
#
# See https://en.wikipedia.org/wiki/CC_BY
#

# Ubuntu and Canonical can't decide on Upstart or SystemD
reboot "Restore Upstart" do
  action :nothing
  reason "This server wants to use Upstart for Services"
  delay_mins 1 # give chef time to return control to Vagrant
end

apt_package 'upstart-sysv' do
  not_if 'dpkg -s upstart-sysv'
  # notifies :reboot_now, 'reboot[Restore Upstart]', :immediately
end
