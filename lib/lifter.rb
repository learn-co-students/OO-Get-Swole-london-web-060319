class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total.to_f
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select {|mship| mship.lifter == self}
  end

  def gym_memberships
    memberships.map {|mship| mship.gym}
  end

  def self.average_lift
    all_of_the_lifts = Lifter.all.map {|lift| lift.lift_total}
    all_of_the_lifts.inject(:+)/all_of_the_lifts.count
  end

  def total_cost
    gym_memberships.sum {|mship| mship.cost}
  end

  def new_member(cost, gym)
    Membership.new(cost, gym, self)
  end

end
