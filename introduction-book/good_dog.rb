# We use classes to create objects
# focus on: states and behaviors

# We can have multiple different object of the same class. These c

# Instance variables keep track of the state and instance methods expose behavior for objects. 


#good_dog.rb

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says Arf"
  end

  def change_info(n,h,w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weights #{weight} and is #{height} tall."
  end

end

sparky = GoodDog.new('Sparky', '12 inches', '10lbs')
puts sparky.info

sparky.change_info('Spartacus', '24 inches', '45lbs')
puts sparky.info