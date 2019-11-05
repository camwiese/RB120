module Walkable
  def walk
    puts "Let's go for a walk"
  end
end


class Cat
  include Walkable

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end

  # def name
  #   @name
  # end

end

kitty = Cat.new("Sophie")
kitty.greet
p kitty.name

kitty.name = "Luna"
p kitty.name
kitty.greet
kitty.walk