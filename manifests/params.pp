# == Class: headphones::params
class headphones::params {
  $install_dir = '/usr/share/headphones'
  $data_dir    = '/var/lib/headphones'
  $user        = 'headphones'
  $user_shell  = '/bin/false'
  $manage_user = true
  $repo        = 'https://github.com/rembo10/headphones.git'
}
