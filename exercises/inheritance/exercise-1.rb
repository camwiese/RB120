class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle

  attr_accessor :bed_type

  def initialize(year,bed_type)
    super(year)
    @bed_type = bed_type
    start_engine
  end

  def start_engine
    puts "Ready to go!"
  end
end

class Car < Vehicle
end


truck1 = Truck.new(1994, "Short")
puts truck1.bed_type
