
# Make a person class that has a name, age, and birthday. When the birthday is called, the age increments by one
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
      @birthday = @age
      puts "New person created with name #{@name} age #{@age}, birthday #{@birthday}"
    end

  def birthday
    @age += 1
    @birthday = @age
  end

end
