class mariadb { 
  package {'MariaDB-server':
  ensure => installed,
  }
     service { 'mysql':
  ensure => running,
  enable => true,
  subscribe => File['/etc/my.cnf.d/server.cnf'],
 }
file { '/etc/my.cnf.d/server.cnf':
 ensure => file, mode => 644,
 source => 'puppet:///modules/mariadb/files/server.cnf',
    }
}
