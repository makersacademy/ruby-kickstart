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

  def initialize(options ={}, &initializer )
    @initializer = initializer
    @name = options[:name]
    @age = options[:age]
    @quote = options[:quote]
    @initializer.call self if block_given?
  end

  def reinit
    @initializer.call self
  end
end

artist = Person.new :name => 'Prince' do |person|
  person.age   = 47
  person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
end

artist.age
artist.age = 24
artist.reinit
artist.age
