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
<<<<<<< HEAD

	attr_accessor 'name', 'age'

	def initialize(name, age)
		@name = name
		@age = age
	end

	def birthday
		@age += 1
=======
	def initialize(name, age, birthday)
		@name = name
		@age = age
		@birthday = birthday
>>>>>>> 0718f30a89be639e676a2adeb890b6cb8525ba11
	end
end
