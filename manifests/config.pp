# == Class: headphones::config
class headphones::config {
  case $::osfamily {
    'Debian': { $config_file = '/etc/default/headphones' }
    'RedHat': { $config_file = '/etc/sysconfig/headphones' }
    default: { fail("Unsupported OS: ${::osfamily}") }
  }

  file { $config_file:
    ensure  => present,
    content => template('headphones/config.erb'),
    mode    => '0644',
  }
}
