# We use classes to create objects
# focus on: states and behaviors

# We can have multiple different object of the same class. These c

# Instance variables keep track of the state and instance methods expose behavior for objects. 


#good_dog.rb

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
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
    "#{self.name} weights #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10lbs')


p sparky.what_is_self