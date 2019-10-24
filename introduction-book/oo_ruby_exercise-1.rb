class MyCar
  attr_accessor :color, :model
  attr_reader :year

  def initialize(y,c,m)
    @year = y
    @color = c
    @model = m
    @current_speed = 0
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

  def view_color
    puts "Your #{@model} is #{@color}"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"

  end

  def view_year
    puts "You have a #{@year} #{@model}"
  end

end


camero = MyCar.new(2019,'Black','Chevy Camero')
camero.speed_up(20)
camero.current_speed
camero.speed_up(20)
camero.current_speed
camero.brake(25)
camero.current_speed
camero.brake(10)
camero.current_speed
camero.shut_off
camero.current_speed
camero.view_year
camero.view_color
camero.change_color('blue')
camero.view_color