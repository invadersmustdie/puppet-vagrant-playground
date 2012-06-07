class redis-server {

  define announce_installation($service_name = $title) {
    notify { "you just installed and started ${service_name}": }
  }

  package { 'redis-server':
    ensure => installed
  }

  file { 'redis-extra-conf':
    ensure => present,
    path => "/etc/redis/redis-extra.conf",
    require => Package["redis-server"],
    source => "puppet:///modules/redis-server/redis-extra.conf"
  }

  file { 'redis-template': 
    ensure => present,
    path => "/etc/redis/redis.template",
    require => Package["redis-server"],
    content => template("redis-server/redis.template.erb")
  }

  service { 'redis-server':
    ensure => running,
    enable => true
  }

  announce_installation { 'redis-server':
    require => Service["redis-server"]
  }
}
