# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

tom = Lifter.new("Tom", 150)
jerry = Lifter.new("Jerry", 60)
daniel = Lifter.new("Daniel",30)

stratford_gym = Gym.new("Stratford")
greenwich_gym = Gym.new("Greenwich")
deptford_gym = Gym.new("Deptford")

mem1 = Membership.new(20, tom, stratford_gym)
mem2 = Membership.new(20, jerry, stratford_gym)
mem3 = Membership.new(15, daniel, deptford_gym)
mem4 = Membership.new(25, daniel, greenwich_gym)

binding.pry

puts "Gains!"
