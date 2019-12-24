# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l = Lifter.new("Bob", 40)
l1 = Lifter.new("Gareth", 55)
l2 = Lifter.new("TJ", 38)

g = Gym.new("Bulk")
g1 = Gym.new("Baaam")

m = Membership.new(20, g, l)
m1 = Membership.new(20, g, l1)
m2 = Membership.new(45, g1, l2)
m2_1 = Membership.new(20, g, l2)




binding.pry

puts "Gains!"
