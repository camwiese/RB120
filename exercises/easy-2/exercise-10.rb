module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end

class Noble

  attr_reader :name, :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  def walk
    "#{@title} #{@name} struts forward"
  end
end

byron = Noble.new("Byron", "Lord")
p byron.walk
p byron.name
p byron.title