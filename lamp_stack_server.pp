package { 'apache2':
  ensure => installed,
}

# Install PHP and ensure it works with Apache
package { 'php':
  ensure  => installed,
  notify  => Service['apache2'],
  require => Package['apache2'],
}

# Install PHP-MySQL Connector
package { 'php-mysql':
  ensure  => installed,
  require => [Package['php'], Package['apache2']],
}

file { '/var/www/html/phpinfo.php':
  source  => '/home/keopr006/puppet-dev/phpinfo.php',
  notify  => Service['apache2'],
  require => [Package['apache2']],
}

# Ensure Apache2 service is running and enabled
service { 'apache2':
  ensure     => running,
  enable     => true,
  require    => [Package['apache2'], Package['php']],
}
