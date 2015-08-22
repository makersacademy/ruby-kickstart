# Lets say we wanted to know what planet people are from.
# Well, that information is the same across every person
# so we can keep it in an instance variable on the class.

class Person
  # When we define methods here, they get defined for
  # instances of Person, so we need to either store
  # them in Person's class or singleton class. It doesn't
  # make sense to give EVERY class a home_planet, so
  # lets put it on the singleton_class
  self                           # => Person
  class << self
    attr_accessor 'home_planet'  # => nil
  end

  # remember, self is Person, so @home_planet
  # is defined on the Person class itself
  @home_planet = 'Erth'         # => "Erth"
  Person.home_planet            # => "Erth"
  Person.home_planet = 'Earth'  # => "Earth"
  @home_planet                  # => "Earth"


  attr_accessor 'name'  # => nil
  def initialize(name)
    # self is now an instance of person, so @name
    # is defined for this particular person
    @name = name        # => "Kate Beckinsale", "Josh Cheek"
  end

  # This one is for instances
  def home_planet
    Person.home_planet  # => "Earth", "Earth"
  end
end

Person.home_planet                   # => "Earth"
kate = Person.new 'Kate Beckinsale'  # => #<Person:0x007ffed98a2ef8 @name="Kate Beckinsale">
josh = Person.new 'Josh Cheek'       # => #<Person:0x007ffed98a2b10 @name="Josh Cheek">
kate.home_planet                     # => "Earth"
josh.home_planet                     # => "Earth"
kate.name                            # => "Kate Beckinsale"
josh.name                            # => "Josh Cheek"

Person.instance_variables  # => [:@home_planet]
josh.instance_variables    # => [:@name]
