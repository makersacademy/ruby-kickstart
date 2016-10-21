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
  #set an attr_accessor so name and age can be read and written
attr_accessor "name", "age"

#initialize functions to set the name and age (I'd initially had birthday sa well, but the specs only call for name and age)
  def initialize(name, age)
    @name = name
    @age = age
  end
# a birthday method that adds 1 to the age
  def birthday
    @age += 1
  end

end
