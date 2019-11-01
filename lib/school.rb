# code here!

class School 
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
    
  end
  
  def add_student(student_name, student_grade)
    if roster[student_grade] == nil
      roster[student_grade] = []
      roster[student_grade] << student_name
    else 
      roster[student_grade] << student_name
    end
  end
  
  def grade(grade_key)
    roster[grade_key]
  end
  
  def sort
    # all_values = []
    # all_keys = []
    # @roster.each_with_index do |hash, index|
    #   all_values << hash[hash.keys[index]]
    #   all_keys << hash.keys[index]
    # end
    # @roster.sort d
    # all_keys.sort
    
    # hash_sorter = {}
    
    # all_values
    
    @roster.sort
    new_hash = {}
    @roster.each_with_index do |array_roster, index|
      new_hash[array_roster[0]] = array_roster[1]
    end
    new_hash
  end
  
end

  
  
    