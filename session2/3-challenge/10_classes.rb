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
 def initalize(name, age, birthday)
     @color = nil 
     @age = nil
     @birhtday = nil  
 end

 attr_accessor 'name, age, birthday'
end

josh = Person.new 'Josh, 29, 30'

