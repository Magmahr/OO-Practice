require_relative 'lifter'
require_relative 'membership'
require_relative 'gym'
require 'pry'


toms = Gym.new("Tom's Bullcage")
flatiron = Gym.new("Flatiron Fitness")
curves = Gym.new("Curves")

m1 =Membership.new(60, "Steve", "Tom's Bullcage")
m2 =Membership.new(120, "Alicia", "Flatiron Fitness")
m3 = Membership.new(80, "John", "Curves")

steve = Lifter.new("Steve", 140)
alicia =Lifter.new("Alicia", 120)
john = Lifter.new("John", 80)

# Lifter.average_lift_total
# Lifter.lift_total.count
 Lifter.average_lift_total
p john.list_of_memberships
alicia.list_of_gyms
curves.gyms_lifters_names
