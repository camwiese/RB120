module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year, :model
  @@number_of_vehicles = 0

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
    @@number_of_vehicles +=1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "You hit the break and decelerate #{number} mph"
  end

  def current_speed
    puts "You are going #{@current_speed} mph"
  end

  def shut_off
    @current_speed = 0
    puts "You turned the car off"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end  

  # Class method to return the class variable
  def self.total_number_of_vehicles
    @@number_of_vehicles
  end

  def age
    "This #{self.model} is #{age_of_vehicle} years old"
  end

  private

  def age_of_vehicle
    Time.now.year - self.year
  end
end


class MyCar < Vehicle
  
  NUMBER_OF_DOORS = 4

  def to_s
    "This car is a #{self.year} #{self.color} #{self.model}"
  end
end

class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS = 2

  def to_s
    "This truck is a #{self.year} #{self.color} #{self.model}"
  end
end


lumina = MyCar.new(1997, 'white', 'chevy lumina')

puts lumina.age
