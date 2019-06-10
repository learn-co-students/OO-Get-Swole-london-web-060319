# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lift1 = Lifter.new("Aaron", 20)
lift2 = Lifter.new("Ed", 60)
lift3 = Lifter.new("Will", 8)
lift4 = Lifter.new("Pizza", 50)

gym1 = Gym.new("The Gym")
gym2 = Gym.new("PureGym")
gym3 = Gym.new("David Lloyds")
binding.pry

puts "Gains!"
