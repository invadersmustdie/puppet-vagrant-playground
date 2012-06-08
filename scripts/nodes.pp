node "base-system" {
  include base-hosts
  include base-sudoers
}

node "puppet-agent.local" inherits "base-system" {
  include redis-server
}
