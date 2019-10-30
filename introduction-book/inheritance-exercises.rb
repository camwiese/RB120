# # Notes


# # Class Inheritance

# We use < to extend Inheritance to classes.
# We can over ride classes. Ruby will use the method defined at the next level up.

# You can only subclass one class
# "It's a" -> class Inheritance. (Dog is an animal).
# "Has a" -> module.  (Dog has an ability to swim).



module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new

buddy.speak('arf!')
kitty.say_name("kitty")