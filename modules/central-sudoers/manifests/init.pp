class central-sudoers {
  package { "sudo":
    ensure => installed
  }

  file { "/etc/sudoers2":
    ensure => present,
    path => "/etc/sudoers",
    mode => 0440,
    content => template("central-sudoers/sudoers.erb")
  }
}
