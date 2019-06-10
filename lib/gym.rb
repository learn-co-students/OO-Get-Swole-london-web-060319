class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def members
    Membership.all.select {|gym| gym.gym == self}
  end

  def self.list_lifter_in_gym(gym)
    Membership.all.select {|mems| mems.gym.name == gym }
  end

  def lifters
    Membership.all.select {|mems| mems.gym == self}
  end

  def total_lift
    Membership.all.collect {|mems| mems.lifter.lift_total}.sum
  end

end

