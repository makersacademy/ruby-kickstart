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
  attr_accessor :name , :age

  def initialize(name, age)
    @name = name
    @age  = age
  end

  def birthday
    @age += 1  #ohhhh thats why it was + 1 misread and put @age only since age = b-day
  end
end

=begin
attr_accessor 'name', 'age'
attr_accessor :name
attr_accessor :age
didnt work? nvm works
=end

