class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    'cant swim'
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

teddy = Dog.new
puts teddy.swim
puts teddy.speak