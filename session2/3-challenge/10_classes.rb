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
	def initialize(name, age)
		@name = name
		@age = age
	end

	attr_accessor 'name', 'age'
	
	def birthday
		@age += 1
		@age
	end
end

#josh = Person.new 'Josh', 28
#
#p josh.name     # => "Josh"
#p josh.age      # => 28
#
#josh.name = 'Joshua'
#p josh.name     # => "Joshua"
#
#p josh.birthday # => 29
#p josh.age      # => 29
#
#p josh.birthday # => 30
#p josh.age      # => 30




