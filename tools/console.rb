# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1= Lifter.new(name:"Joe", lift_total:100) 
lifter2= Lifter.new(name:"Danielle", lift_total:300) 

gym1= Gym.new("Puregym")
gym2= Gym.new("Virgin")
gym3=Gym.new("Fitnessfirst")

membership1= Membership.new(cost:30, lifter:lifter1 , gym:gym2)
membership2= Membership.new(cost:60, lifter:lifter1 , gym:gym3)
membership3= Membership.new(cost:20, lifter:lifter2 , gym:gym1)

binding.pry

0 
puts "Gains!"
