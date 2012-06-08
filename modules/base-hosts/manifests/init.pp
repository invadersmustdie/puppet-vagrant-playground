class base-hosts {
  file { "/etc/hosts":
    ensure => present,
    path => "/etc/hosts",
    mode => 0644,
    content => template("base-hosts/hosts.erb")
  }
}
