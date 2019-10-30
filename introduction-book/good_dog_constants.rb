class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def to_s
    "This dogs name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Spary",4)

p sparky.age
puts sparky.to_s
p sparky

puts sparky.inspect