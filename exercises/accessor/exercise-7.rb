class Person
  attr_reader :name

  def name=(n)
    @name = n.downcase.capitalize
  end

end

person1 = Person.new
person1.name = 'eLizaBetH'
puts person1.name