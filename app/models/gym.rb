require 'pry'
class Gym

  @@all = []

  attr_reader :name, :lifter

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def gyms_lifters
    Membership.all.select do |membership|
     membership.gym == self.name
    end
  end

  def gyms_lifters_names
    member = Membership.all.select do |membership|
       if membership.gym == self.name
         membership.lifter
       end
    end
    member.map do |member|
      member.lifter
      # binding.pry
    end
  end

  def combined_lift_total
    @count = 0
    @total = 0
    gyms_lifters.each do |membership|
      Lifter.all.each do |lifter|
        if membership.lifter == lifter.name
          @total += lifter.lift_total
          @count += 1
          binding.pry
        end
      end
    @total/@count
    end
  end



end
