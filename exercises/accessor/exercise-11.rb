class Person
  def name
    "#{@first} #{@last}"
  end

  def name=(name)
    parts = name.split
    @first = parts.first
    @last = parts.size > 1 ? parts.last : ''
  end
end

person1 = Person.new
person1.name = "Cam Wiese"
puts person1.name

