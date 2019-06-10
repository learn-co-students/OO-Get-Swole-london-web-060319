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

  def self.average_lift_total  
    @@all.sum{|lifter| lifter.lift_total} / @@all.length
  end

  def sign_up(membership_cost, gym)
    Membership.new(membership_cost, self, gym)
  end

  def total_membership_cost
     Membership.all.select.sum{|m| m.cost if m.lifter == self}
  end

end



