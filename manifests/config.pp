# == Class: headphones::config
class headphones::config {
  file { '/lib/systemd/systemd/headphones.service':
    ensure  => present,
    content => template('headphones/headphones.service.erb'),
    mode    => '0644',
  }
}
