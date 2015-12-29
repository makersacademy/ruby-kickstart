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

#read the name
def name 
	@name
end
#read the age
def age
	@age
end
#write the name
def name=(str)
	@name = str
end

#write the age
def age=(str)
	@age = str
end

def birthday
	@age += 1
end
end

#alternatively when you want both read and writer and writer; we can use an accessor!

#this would be place directly underneath the class
#attr_accessor :name
#attr_accessor :age 
#we would only then need to initialize name, age and create a method for birthday


