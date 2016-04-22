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
  def initialize name, age
    @name = name
    @age = age
  end

  def name
     @name
  end

  def name=(new_name)
    @name = new_name
  end

  def birthday
    @age += 1
  end

  def age
    @age
  end
  
  def age=(new_age)
    @age = new_age
  end

end


