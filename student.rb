class Student
  def initialize(name, course, gpa)
    @name = name
    @course = course
    @gpa = gpa
  end

  def turn_in_homework
    puts "*turns in homework"
  end

  def go_to_class
    puts "*goes to class*"
  end

  def learn
    puts "*learns*"
  end
end

puts students = [
  Student.new("Sally", "Politico", "3.14"),
  Student.new("Sue", "Psych", "3.0"),
  Student.new("Hank", "Ag", "2.3")
]
