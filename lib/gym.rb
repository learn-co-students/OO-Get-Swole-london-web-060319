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
    Membership.all.select{|memb| memb.gym == self}
  end

  def lifters
    memberships.map{|memb| memb.lifter}
  end

  def lifter_names
    lifters.map{|lifter| lifter.name}
  end

  def lift_total
    gains = lifters.map{|lifter| lifter.lift_total}
    gains.inject(0, :+)
  end
end
