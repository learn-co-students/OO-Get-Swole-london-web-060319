class Gym

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # Get a list of all gyms
    @@all
  end

  def membership
    # Get a list of all memberships at a specific gym
    Membership.all.select{|m| m.gym == self }
  end

  def lifter_list
    # Get a list of all the lifters that have a membership to a specific gym
    membership.collect{|m| m.lifter}.uniq
  end

  def lifter_names
    # Get a list of the names of all lifters that have a membership to that gym
    lifter_list.collect{|l| l.name}
  end

  def gym_total
    # Get the combined lift total of every lifter has a membership to that gym
    membership.sum{|m| m.lifter.lift_total}
  end

end
