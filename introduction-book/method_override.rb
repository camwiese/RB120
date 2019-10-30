class Parent
  def say_hi
    p "Hi from parent"
  end
end

p Parent.superclass

class Child < Parent
  def say_hi
    p "hi from child"
  end

  def send
    p "send from Child..."
  end

  def instance_of?
    p "I'm a fake instance"
  end


end

child = Child.new
child.say_hi


c = Child.new
p c.instance_of? Child
p c.instance_of? Parent