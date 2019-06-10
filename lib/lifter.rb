class Lifter
  attr_reader :name, :lift_total
  @@all = []


  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships_of
    Membership.all.select {|membership| membership.lifter == self}    
  end

  def gym_member_of
    memberships_of.map {|membership| membership.gym}
  end

  def self.average_lift
    self.all.sum(&:lift_total)/self.all.length
  end

  def total_cost
    memberships_of.sum(&:cost)
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self) 
  end

end
