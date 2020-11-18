
class School
attr_accessor :school_name, :roster

  def initialize(school_name)
    @roster= Hash.new do |key, value|
      key[value] = []
    end 
  
  end 
   def add_student(student_name, grade)
    @roster[grade] << student_name
   end 
   def grade(year)
    roster[year]
   end 
   def sort
      name_arr = {}
      roster.each do |grade, student_name|
        name_arr[grade] = student_name.sort
      end 
      name_arr
    end 
end 
