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

class Person                      #Defines a class called Person
  attr_accessor 'name', 'age'     #method attribute accessor to read/write or getter/setter methods

  def initialize(name, age)       #uses the initialize method to set the values for name and age
    @name = name                  #sets the name
    @age  = age                   #sets the age
  end                             #ends the method

  def birthday                    #defines the birthday method
    @age += 1                     #takes the age and adds one
  end                             #ends the method
end                               #ends the class

=begin JOSH'S SOLUTION
class Person
  attr_accessor 'name', 'age'

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def birthday
    @age += 1
  end
end
=end