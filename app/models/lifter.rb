require 'pry'
class Lifter

  @@all = []

  attr_reader :name, :lift_total

  def initialize(name, lift_total)
  @name = name
  @lift_total = lift_total
  @@all << self
  end

  def self.all
    @@all
  end

  def list_of_memberships
    Membership.all.select do |membership|
      membership.lifter == self.name
    end
  end

  def list_of_gyms
     Membership.all.select do |membership|
      membership.lifter == self.name
    end
  end

  def self.average_lift_total
      @sum = 0
      @@all.map do |lifter|
      @sum += lifter.lift_total
      # binding.pry
      end
    @sum/(@@all.count)
  end

  def my_costs
    self.membership.cost
  end

  def new_membership(cost=80)
    Membership.new(cost)
  end


end
