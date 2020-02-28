class Gym
  attr_reader :name

 @@all = []

  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all{|membership|membership.gym == self}
  end

  def lifters
    memberships.map{|membership|membership.lifter}
  end

  def lifter_names

    lifters.map{|lifter|lifter.name}

  end


end


  #
  # - Get a list of all memberships at a specific gym
  #
  # - Get a list of all the lifters that have a membership to a specific gym
  #
  # - Get a list of the names of all lifters that have a membership to that gym
  #
  # - Get the combined lift total of every lifter has a membership to that gym
