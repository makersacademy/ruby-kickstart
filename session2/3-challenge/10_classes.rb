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
    
    def birthday                                                                #had to peek at solution to see what this method was supposed to be doing. naming it celebrate_birthday or similar would be better
        @age += 1
    end
end
