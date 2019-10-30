class Student
  def initialize(n,g)
    @name = n
    @grade = g
  end

  def better_grade_than?(name)
    name.grade > self.grade ? "Well done" : "Not so hot"
  end

  protected

  def grade
    @grade
  end

end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 80)

p joe.better_grade_than?(bob)


