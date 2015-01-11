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
# [*address*]
#   The address Headphones should listening on
#
# [*port*]
#   The port number Headphones should be running on
#
# [*pidfile*]
#   The pidfile for the Headphones process
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
  $address     = $headphones::params::address,
  $port        = $headphones::params::port,
  $pidfile     = $headphones::params::pidfile,
  $repo        = $headphones::params::repo,
) inherits headphones::params {

  class { 'headphones::install': } ->
  class { 'headphones::config': } ~>
  class { 'headphones::service': } ->
  Class['headphones']
}
