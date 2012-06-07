node "puppet-agent.local" {
  include central-sudoers
  include redis-server
}
