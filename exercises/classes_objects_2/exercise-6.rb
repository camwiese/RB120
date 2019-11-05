class Cat
  COLOR = "brown"

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name} and I'm a #{COLOR} cat"
  end

  def to_s
    "I'm #{name}"
  end

end

kitty = Cat.new("sophie")
kitty.greet
puts kitty