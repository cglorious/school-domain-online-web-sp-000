class School
  attr_reader :name, :roster, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    @roster[grade] = []
    @roster[grade] << student
    @roster
  end

end
