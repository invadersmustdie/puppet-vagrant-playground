class redis-server {
  define announce_installation($service_name = $title) {
    notify { "you just installed and started ${service_name}": }
  }

  package { 'redis-server':
    ensure => installed
  }

  file { 'redis.conf':
    ensure => present,
    path => "/etc/redis/redis.conf",
    source => "puppet:///modules/redis-server/redis.conf",
    require => Package["redis-server"],
    notify => Exec["redis-server-restart"]
  }

  service { 'redis-server':
    ensure => running,
    enable => true,
    hasrestart => true,
    require => Package["redis-server"]
  }

  exec { "redis-server-restart":
    command => "/etc/init.d/redis-server restart",
    require => Package["redis-server"]
  }

  announce_installation { 'redis-server':
    require => Service["redis-server"]
  }
}
