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
  
  def memberships
    Membership.all.select {|mship| mship.gym == self}
  end

  def lifter_memberships
    memberships.map {|mship| mship.lifter}
  end

  def lifters_names
    lifter_memberships.map {|lift| lift.name}
  end

  def total_lift
    lifters.sum {|lift| lift.lift_total}
  end

end
