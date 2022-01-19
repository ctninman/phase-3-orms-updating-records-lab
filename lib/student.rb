require_relative "../config/environment.rb"

class Student

  attr_accessor :id, :name, :grade

  def self.new_from_db(row)
    id = row[0]
    name = row[1]
    grade = row[2]
    student = self.new(id, name, grade)
  end

  def initialize(id: nil, name:, grade:)
    @id = id 
    @name = name
    @grade = grade
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]


end
