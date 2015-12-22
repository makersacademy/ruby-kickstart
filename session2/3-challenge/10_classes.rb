# Make a person class that has a name, age, and birthday
#
# josh = Person.new 'Josh', 28
#
# josh.name     # => "Josh"
# josh.age      # => 28
#
# josh.name = 'Joshua'
# josh.name     # => "Joshua"
#
# josh.birthday # => 29
# josh.age      # => 29
#
# josh.birthday # => 30
# josh.age      # => 30
#

class Person
  
  def initialize(name_input, age_input)
    @name_input = name_input
    @age_input = age_input
  end
  
  def name=(new_name)
    @name_input = new_name
  end
  
  def name 
    @name_input
  end
  
  def age=(new_age)
    @age_input = new_age
  end
  
  def age
    @age_input
  end
  
  def birthday
    @age_input += 1
  end
end





