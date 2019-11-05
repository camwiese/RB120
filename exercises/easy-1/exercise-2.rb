class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 42
fluffy = Pet.new(name)
name += 
puts fluffy.name
puts fluffy
puts fluffy.name
puts name


## the issue here is that we're mutating the name