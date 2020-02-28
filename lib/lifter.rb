class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all<< self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership|membership.lifter == self}
  end
# Get a list of all the memberships that a specific lifter has

  def gyms
    memberships.map{|membership|membership.gym}
  end

  def self.average_lift_total
    lifts = all.map{|lifter|lifter.lift_total}
    lift_totals = lifts.inject(:+)
    lift_totals / lifts.count
  end
# Get the average lift total of all lifters

    def total_cost
# Get the total cost of a specific lifter's gym memberships
    membs_cost = memberships.map{|membership|membership.cost}
    cost_total = membs_cost.inject(:+)
    end

    def sign_up(cost, gym)

      Membership.new(cost, self, gym)

    end
    # Given a gym and a membership cost, sign a specific lifter up for a new gym

end
