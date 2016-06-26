# == Class: headphones::service
class headphones::service {
  service { 'headphones':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
