#  Sync_authorized_keys Puppet Module
This module install authorized_keys for system user from cash.


### Authors
* Artem Kobrin <kobrin.artem@gmail.com>

### Support OS
* Linux

## Usage


```puppet
class { 'sync_authorized_keys':
  group => $default,
}
```
or
```puppet
class { 'sync_authorized_keys':
  group => $testgroup,
}
```

For adding groups and users edit file maninfest/users.pp

```puppet
class sync_authorized_keys::users {
  $default = {
    'artem' => {ensure  => 'present',
               system_user => 'root',
               comment => 'artem@nix',
               authorized_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwLWJEU5HB7CO9iNZ6liuMBSLN8hVlgkXzpAH5QDsnM5hpJKP2uw0WLhjqcd/+TNm3g5c3Dwqw6u6eNnuwYoYvjSGR6kEZlj40FwbEIIyh7xnvfQm1ut3wsjkN6ZcJqv6JdhphNQmu/punwB+7xhwwwSBBxR7Mb3UeIdZQ6EvDvYj2GUU03HVhAAkFZTIQU2COePPGYUPCjTd7kWFYMSjPJ+N1yiR5Cdr0zJyVo+9kUI3ZsuoNWFXb273csM2D2E7KSdiTd0csKvhF/jDn2PCV9Ysb2vIfXI/jwXE9uOQf4vdvd2Um0GTuh5fxlnH8ckqPL3B+SY3F3yJCYDv1IHFvQ==',
               key_type => 'ssh-rsa',},
    'nick' => {ensure  => 'present', 
               system_user => 'root',
               comment => 'nick@pc',
               authorized_key => 'nickqweqrqwer',
               key_type => 'ssh-rsa',},
    'jack' => {ensure  => 'present',
               system_user => 'root',
               comment => 'jack@pc',
               authorized_key => 'jackqweqrqwer',
               key_type => 'ssh-rsa',},
  }
  $testusers = {
    'testnick' => {ensure  => 'present',
               system_user => 'root',
               comment => 'testnick@pc',
               authorized_key => 'nickqweqrqwer',
               key_type => 'ssh-rsa',},
    'testjack' => {ensure  => 'present',
               system_user => 'root',
               comment => 'testjack@pc',
               authorized_key => 'jackqweqrqwer',
               key_type => 'ssh-rsa',},
  }
}
```

