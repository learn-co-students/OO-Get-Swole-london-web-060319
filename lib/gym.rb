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

  def memberships_at
    Membership.all.select {|membership| membership.gym == self}
  end

  def gym_lifters
    memberships_at.map {|membership| membership.lifter.name}
  end

  def combined_lift
    lift = memberships_at.map {|membership| membership.lifter.lift_total}
    lift.reduce(:+)
  end

end
