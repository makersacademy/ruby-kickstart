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

  def initialize(data = Hash.new, &initializer )
  	@name = data[:name]
  	@age = data[:age]
  	@quote = data[:quote]

    if initializer.nil?
    	@initializer = Proc.new {}
    else
    	@initializer = initializer
    end

    # @initializer = initializer || Proc.new {}   # || is alternative definition if value is nil
    # @initializer.call self

    @initializer.call self
  end

  def reinit
    @initializer.call self
  end

end

# p1 = Person.new :name => 'Joe', :age => 31, :quote => 'never give up' do |x| 
# 		x.name = 'harry'; x.age = 40; x.quote = 'Hello world'
# 	end
# p p1

# artist = Person.new :name => 'Prince', :quote => 'Hello world' 
# p artist
