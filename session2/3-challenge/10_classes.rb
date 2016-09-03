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

attr_accessor :name, :age

  def initialize(name, age)
  	@name = name
  	@age = age
  end

#calling this method on the object, will return the value of the age plus 1
#stores the new value in the variable as it uses += instead of just +
#so everytime this method is called, a new age is used, and a new birthday is returned
  def birthday
  	@age += 1
  end

end
