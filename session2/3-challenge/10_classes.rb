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
    def initialize(name, age)
        @name = name
        @age = age
    end
    
    attr_accessor 'age'
    def age
        age = @age
    end
    
    attr_accessor 'birthday'
    def birthday 
        @age += 1
    end
        
        
end


josh = Person.new 'Joshua', 28

puts josh.name
puts josh.age
puts josh.birthday