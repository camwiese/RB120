Core Concepts:
* Objects 
* Classes defining objects (what an object is made of and what it can do)



Classes

class House
end

home = House.new

# home is an object OR instance of class House. 
# We instantiated home from the class House
# The object is returned when we call the class method new


Modules

A module is a collection of behaviors. 
"Inlcluded" in our classes. 

module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speach("Arf!") 

bob = HumanBeing.new
bob.speak('Hello!')

In both objects, we have access to the speak instance method. 
(as if we had copy and pasted the method in!)


Method Lookup
We can find the path of a method by calling ancestors


