# == Class: headphones::install
class headphones::install() inherits headphones::params {
  ensure_packages(['git', 'python'])

  if $headphones::manage_user {
    user { $headphones::user:
      ensure => present,
      shell  => $headphones::user_shell,
      home   => $headphones::data_dir,
    }
  }

  vcsrepo { $headphones::install_dir:
    ensure   => present,
    provider => git,
    source   => $headphones::repo,
    owner    => $headphones::user,
    group    => $headphones::user,
    require  => [ User[$headphones::user], Package['git'] ]
  }

  file { $headphones::data_dir:
    ensure  => directory,
    mode    => '0755',
    owner   => $headphones::user,
    group   => $headphones::user,
    require => User[$headphones::user]
  }
}
