# == Class: headphones::params
class headphones::params {
  $install_dir = '/usr/share/headphones'
  $data_dir    = '/var/lib/headphones'
  $user        = 'headphones'
  $user_shell  = '/bin/false'
  $manage_user = true
  $address     = '0.0.0.0'
  $port        = '8181'
  $pidfile     = '/var/run/headphones/headphones.pid'
  $repo        = 'https://github.com/rembo10/headphones.git'
}
