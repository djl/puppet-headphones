# == Class: headphones::service
class headphones::service {
  if $::osfamily =~ /^Debian|RedHat/ {
    service { 'headphones':
      ensure     => running,
      enable     => true,
      hasstatus  => true,
      hasrestart => true,
    }
  }
}
