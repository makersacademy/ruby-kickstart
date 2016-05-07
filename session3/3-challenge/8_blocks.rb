# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person

  attr_accessor :name, :age, :quote

  def initialize(hash, &initializer)
    @initializer = initializer
    @name = hash[:name]
    @age = hash[:age]
    @quote = hash[:quote]
    reinit if initializer != nil
  end

  def reinit
    @initializer.call self
  end

end

=begin Tests

 artist = Person.new :name => 'Prince' do |person|
  person.age   = 47
   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
   person.name = 'Harry'
end

person = Person.new :age => 34 do |person|
  person.name = "Candy"
  person.quote = "Why"
end

p artist.name #=> 'Harry'
p artist.age #=> 47

p person.age #=> 'Candy'
p person.name #=> 34

p name = Person.new(:name => 'Kris').name
p age = Person.new(:age => 27).age
=end