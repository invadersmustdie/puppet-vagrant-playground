class base-sudoers {
  package { "sudo":
    ensure => installed
  }

  file { "/etc/sudoers2":
    ensure => present,
    path => "/etc/sudoers",
    mode => 0440,
    content => template("base-sudoers/sudoers.erb")
  }
}
