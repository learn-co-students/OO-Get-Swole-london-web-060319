# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("big lad", 600)
l2 = Lifter.new("Hapthor", 1000)
l3 = Lifter.new("perkins", 5)

g1 = Gym.new("golds")
g2 = Gym.new("Pure")

m1 = Membership.new(5000, l1, g1)
m2 = Membership.new(2000, l1, g2)

binding.pry

Lifter.all
Lifter.average_lift_total 




puts "Gains!"
