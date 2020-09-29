class School
  attr_reader :name, :roster, :student, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @student = student
    @grade = grade
    if @roster.include?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
    @roster
  end

  def grade(grade)
    @roster.each do |key, value|
      if key == grade
        return value
      end
    end
  end

  def sort
  #iterate through the hash
  #sort the value
  #return the hash
    @roster.map do |key, value|
      value.sort
    end
  end
  
end
