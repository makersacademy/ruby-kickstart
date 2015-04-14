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

	def birthday
    	@age += 1
  	end

	attr_accessor 'name', 'age'
end

josh = Person.new 'Josh', 28

puts josh.name     # => "Josh"
puts josh.age      # => 28

josh.name = 'Joshua'
puts josh.name     # => "Joshua"

puts josh.birthday # => 29
puts josh.age      # => 29

puts josh.birthday # => 30
puts josh.age      # => 30