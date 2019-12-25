class Gym
  attr_reader :name
  @@all=[]

  def initialize(name)
    @name = name
    @@all<<self 
  end

  def self.all
    @@all
  end 

  def self.all_gyms 
    @@all 
  end 

  def memberships
    Membership.all.select {|membership| membership.gym == self}
  end 

  def lifters
     memberships.map {|membership_gym| membership_gym.lifter}
  end 

  #Get a list of the names of all lifters that have a membership to that gym 

  def lifters_names
    lifters.map {|lifter| lifter.name}
  end 
  
  def lift_total 
    total= lifters.map {|lifter| lifter.lift_total} 
    total.sum.fdiv(total.size)
  end 

end
