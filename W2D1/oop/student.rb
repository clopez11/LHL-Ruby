class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end

end

# ---- driver code

joe = Student.new("Joe", 90)
puts joe.inspect

puts '----'

bob = Student.new("Bob", 84)
puts bob.inspect

puts '----'

puts "Well done!" if joe.better_grade_than?(bob)