# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("Lifter name1", 10)
lifter2 = Lifter.new("Lifter name2", 20)

gym1=Gym.new("Gym name1")
gym2=Gym.new("Gym name2")

membership1=Membership.new(100, lifter1, gym1)
membership2=Membership.new(200, lifter2, gym2)
membership3=Membership.new(100, lifter1, gym2)
membership4=Membership.new(200, lifter2, gym1)


binding.pry

puts "Gains!"
