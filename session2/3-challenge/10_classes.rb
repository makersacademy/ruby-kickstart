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
	def initialize(n, a)
		@name = n 
		@age = a 	
	end
	def age
		return @age
	end
	def name
		return @name
	end
	def name=(val)
		@name = val
	end
	def age=(val)
		@age = val
	end
	def birthday
		return @age += 1
	end
end


