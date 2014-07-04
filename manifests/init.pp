# Class: sync_authorized_keys
#
# This module manages sync_authorized_keys
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class sync_authorized_keys (
  group = $sync_authorized_keys::users::default
  ) {
  include sync_authorized_keys::users
# function add ssh_authorized_key for user
  define add_user(
    $ensure  = 'present',
    $authorized_key = '<authorized_key>',
    $system_user = 'root',
    $comment = undef,
    $ensure = 'present',
    key_type = 'ssh-rsa',
    ) {
    ssh_authorized_key {$title:
      ensure => $ensure,
      key    => $authorized_key,
      type   => 'ssh-rsa',
      name   => $comment,
      user   => $system_user,
    }
  }
  create_resources(sync_authorized_keys::add_user, $sync_authorized_keys::users::default)
}
