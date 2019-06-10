class Lifter
  attr_reader :name, :lift_total
  
  @@all=[] 

  def initialize(name:, lift_total:)
    @name = name 
    @lift_total = lift_total.to_f 
    @@all<<self
  end

  def self.all
    @@all
  end 

  def memberships 
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms 
    memberships.map {|my_memberships| my_memberships.gym}
  end 

  def self.average 
   total=Lifter.all.map {|lifter| lifter.lift_total}
   total.sum.fdiv(total.size)
  end 

  def total_cost 
    memberships.map {|lifter_membership| lifter_membership.cost}.inject(0, :+)
  end 

  def new_member(gym,cost)
    Membership.new(cost:cost,lifter:self, gym:gym)
  end   
end
