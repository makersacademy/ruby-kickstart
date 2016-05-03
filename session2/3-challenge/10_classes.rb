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
   attr_accessor 'name'
   attr_accessor 'age'
   
  def initialize(name, age)
    @name = name
    @age = age
  end

  def birthday
    #think this should have a better name, birthday to me implies a specific day.
    #'has_a_birthday' or 'ages_1_year' seem more intuitive to me.
    @age += 1
  end
end
