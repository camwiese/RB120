# Exploring class variables

class GoodDog
  @@number_of_dogs = 0 ## Class level detail that pertains to the class, not individual objects

  def initialize
    @@number_of_dogs +=1
  end

  def self.total_numbber_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_numbber_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_numbber_of_dogs