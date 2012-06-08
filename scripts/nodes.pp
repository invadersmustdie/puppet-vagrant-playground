node "base-system" {
  include base-sudoers
}

node "puppet-agent.local" inherits "base-system" {
  include redis-server
}
