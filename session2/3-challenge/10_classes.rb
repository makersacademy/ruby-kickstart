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
	attr_accessor :name, :age, :birthday

	def initialize(name, age)
		@name = name
		@age = age
	end 

	def birthday
		@birthday = age + 1
		@age += 1
	end
end

josh = Person.new("John", 28)
p josh.name
p josh.age
p josh.birthday
p josh.age
p josh.birthday
p josh.age