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

  def specific_membership
    Membership.all.select {|mem| mem.lifter.name == self.name}
  end

  def self.lifter_avg
    @@all.collect {|lifter| lifter.lift_total}.sum / @@all.size
  end

  def total_cost
    specific_membership.collect {|membership| membership.cost}.sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end


end
