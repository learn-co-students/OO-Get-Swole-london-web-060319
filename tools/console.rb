# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#gym
uber = Gym.new("Uber")
twitter = Gym.new("Twitter")
airbnb = Gym.new("AirBnb")

#lifter
bill = Lifter.new("Bill", 3000000000)
warren = Lifter.new("Warren", 900000000)
jeff = Lifter.new("jeff", 1500000000)

#membership
uberbill = Membership.new(200, uber, bill)
twitterbill = Membership.new(300, twitter, bill)
airbnbbill = Membership.new(100, airbnb, bill)
twitterwarren = Membership.new(300, twitter, warren)
uberwarren = Membership.new(200, uber, warren)
airbnbwarren = Membership.new(100, airbnb, warren)
airbnbjeff = Membership.new(100, airbnb, jeff)
uberjeff = Membership.new(200, uber, jeff)
twitterjeff = Membership.new(300, twitter, jeff)

binding.pry

puts "Gains!"
