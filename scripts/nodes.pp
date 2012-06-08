node "base-system" {
  include central-sudoers
}

node "puppet-agent.local" inherits "base-system" {
  include redis-server
}
