class Membership
  attr_accessor :lifter, :gym, :cost
  @@all=[] 

  def initialize(cost:, lifter:, gym:)
    @lifter=lifter
    @gym=gym 
    @cost = cost.to_f 
    @@all<<self 
  end

  def self.all
    @@all 
  end 

  def self.all_memberships
    @@all
  end 

end
