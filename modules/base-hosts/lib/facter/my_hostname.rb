Facter.add(:my_hostname) do
  setcode do
    `hostname`
  end
end
