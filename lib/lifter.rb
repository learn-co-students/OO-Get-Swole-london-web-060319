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

  def memberships
    Membership.all.select{|memb| memb.lifter == self}
  end

  def gyms
    memberships.map{|memb| memb.gym}
  end

  def self.lifts
    all.map{|lifter| lifter.lift_total}
  end

  def self.average_lift
    lifts.inject(0, :+)/all.count
  end

  def total_cost
    costs = memberships.map{|memb| memb.cost}
    costs.inject(0, :+)
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end
