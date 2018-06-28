require 'pry'
class Membership

  @@all = []

  attr_reader :cost, :lifter, :gym, :name

  def initialize(cost, lifter, gym)
    @gym = gym
    @lifter = lifter
    @cost = cost
    @@all << self
  end

  def self.all
    @@all
  end

end
