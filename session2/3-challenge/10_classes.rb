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

# Create the person class
class Person
  # This creates the setter and getter methods (def name=, def name, def age=, def age)
  attr_accessor 'name', 'age'

  # Set up the instance varaibles for these two
  def initialize(name, age)
    @name = name
    @age  = age
  end

  # Create a birthday methods which aads one to age
  def birthday
    @age += 1
  end
end


=begin Without comments:

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
