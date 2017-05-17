class { '::php':
-  include apt
    ensure         => latest,
    manage_repos   => false,
    fpm            => true,
    dev            => false,
    composer       => true,
    pear           => false,
    phpunit        => false,
    package_prefix =>'php7.0-',
    settings       => {
      'PHP/max_execution_time'  => '90',
      'PHP/max_input_time'      => '300',
      'PHP/memory_limit'        => '512M',
      'PHP/post_max_size'       => '32M',
      'PHP/upload_max_filesize' => '32M',
      'Date/date.timezone'      => 'America/New_York',
      'PHP/max_input_vars       => ' 1600',
    },
    extensions     => {
      bcmath   => {},
      cli      => {},
      curl     => {},
      gd       => {},
      imap     => {},
      json     => {},
      mcrypt   => {},
      mysqlnd  => {},
      mbstring => {},
      opcache  => {},
      redis    => {},
      soap     => {},
      xsl      => {},
      xml      => {},
      xmlrpc   => {},
      zip      => {},
      },
    }

  php::fpm::pool { 'www1':
    listen => '/var/run/php7-fpm.sock1',
  }

  php::fpm::pool { 'www2':
    listen => '/var/run/php7-fpm.sock2',
  }

service { 'php7-fpm':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
    require    => Package['php7-fpm'],
  }

  file { '/etc/php7/fpm/pool.d/www.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/php/files/www.conf',
    notify  => Service['php7-fpm'],
    require => Package['php7-fpm'],
  }

  file { '/etc/php7/fpm/php.ini':
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/php/files/php.ini',
    notify  => Service['php7-fpm'],
    require => Package['php7-fpm'],
  }

  include mariadb::php7-mysql
}
