# == Class: headphones
#
# Install Headphones
#
# === Parameters
#
# [*install_dir*]
#   Where Headphones should be installed
#
# [*data_dir*]
#   The directory containing data created by Headphones
#
# [*user*]
#   The user Headphones should run as
#
# [*user_shell*]
#   The Headphones user's shell
#
# [*manage_user*]
#   Whether Puppet should manage this user
#
# [*repo*]
#   The upstream git repo from which Headphones will be installed
#
# === Examples
#
#  class { 'headphones':
#    user => 'jim',
#  }
#
#  # use a custom repo
#  class { 'headphones':
#    repo => 'https://github.com/someone/headphones-forked',
#  }
#
class headphones (
  $install_dir = $headphones::params::install_dir,
  $data_dir    = $headphones::params::data_dir,
  $user        = $headphones::params::user,
  $user_shell  = $headphones::params::user_shell,
  $manage_user = $headphones::params::manage_user,
  $repo        = $headphones::params::repo,
) inherits headphones::params {

  validate_bool($manage_user)

  class { 'headphones::install': } ->
  class { 'headphones::config': } ~>
  class { 'headphones::service': } ->
  Class['headphones']
}
