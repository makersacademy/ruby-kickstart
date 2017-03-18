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
<<<<<<< HEAD
  
  attr_accessor 'name', 'age'
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def birthday
    @age += 1
  end

end

ash = Person.new 'Ash', 24

puts ash.name
puts ash.age

ash.name = 'Ashleigh'

puts ash.name

ash.birthday
puts ash.age

ash.birthday
puts ash.age

=======

end
>>>>>>> c6e3db68b1696c9b1ce9890d9a36cc8d971f72ab
