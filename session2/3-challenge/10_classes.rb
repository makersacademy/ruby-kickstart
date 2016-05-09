# Make a person class that has a name, age, and birthday.
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

# This code creates a Person class.  This allows
# us to group together the behaviors (methods)
# essential to each Person object.  This allows
# us to create many different Persons, each with
# the same essential behaviors, in turn saving
# the need to create separate methods for each
# Person object.

class Person
# Creates new Person class.  Classes have to
# be defined with constants, a special
# character recognizable because it begins
# with a capital letter.

# Constants store info that does NOT
# change over the course of the program.

  attr_accessor :name, :age
# attr_accessor automatically writes the
# 'set' and 'get' methods for 'name' and
# 'age'.  In other words, it's shorthand for
#this:

# => def name=(name)
# =>  @name = name
# => end
# => def name
# =>  @name
# => end
# => def age=(age)
# =>  @age = age
# => end
# => def age
# =>  @age
# => end

  def initialize(name, age)
# Cretes a new method, initialize, that takes
# two arguments, a name and an age.  Because
# this method is inside a class it is an
# 'instance' method of the Person class, i.e.
# it doesn't belong to only one instance of,
# that class but all instances of that class.
# The initialize method will be executed EVERY
# time you create a new instance of the Person
# class.  We use this method to set the
# default state of the Person at the time of
# its creation

      @name = name

      @age = age

    end

    def birthday
# Creates a new method that updates the @age
# instance variable of the Person class by 1.
      @age += 1
    end
end

# Note that the attr_accessor method is also doing this:
# It creates instance variables
# '@name' and '@age'.  The '@' flags that they
# are instance variables, that is, variables
# applicable to every instance of the Person
# class.  This means they can be accessed by
# every method INSIDE the Person class and
# every Person object outside the Person class.
# All other objects cannot access these variables,
# e.g. an Animal object can't name itself using
# the @name instance variable from the Person class.
