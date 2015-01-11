# == Class: headphones::install
class headphones::install() inherits headphones::params {
  user { $headphones::user:
    ensure => present,
    shell  => $headphones::user_shell,
  }

  package { 'git':
    ensure => present,
  }

  vcsrepo { $headphones::install_dir:
    ensure   => present,
    provider => git,
    source   => $headphones::repo,
    owner    => $headphones::user,
    group    => $headphones::user,
    require  => [ User[$headphones::user], Package['git'] ]
  }

  if $::osfamily =~ /^Debian|RedHat/ {
    file { '/etc/init.d/headphones':
      ensure => present,
      source => "puppet:///modules/headphones/${::osfamily}.init",
      mode   => '0755',
    }
  }

  file { $headphones::data_dir:
    ensure  => directory,
    mode    => '0755',
    owner   => $headphones::user,
    group   => $headphones::user,
    require => User[$headphones::user]
  }
}
