# exec {'apt-update':
#   command => '/usr/bin/apt-get update'
# }

class {'nginx': }
class {'mariadb::install': }