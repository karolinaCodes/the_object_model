#### QUESTIONS 7-8
class Student

  def initialize(age, grade)
    @age = age
    @grade = grade
  end

  def better_grade_than? student
    grade > student.grade
  end

  protected

  def grade
    @grade
  end
end


joe = Student.new("17", 100)
bob= Student.new("17", 90)
# joe.grade
puts "Well done!" if joe.better_grade_than?(bob)
