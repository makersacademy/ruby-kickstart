# GM - have a look at about 48:00 onwards in https://vimeo.com/24365612 for this to make some sense.

# Lets say we wanted to know what planet people are from.
# Well, that information is the same across every person
# so we can keep it in an instance variable on the class.

# GM - we're making an instance variable of the class, rather than an instance variable of INSTANCES of that class.

class Person
  # When we define methods here, they get defined for
  # instances of Person, so we need to either store
  # them in Person's class or singleton class. It doesn't
  # make sense to give EVERY class a home_planet, so
  # lets put it on the singleton_class
  self # => Person
  class << self
    attr_accessor 'home_planet'
  end
  # GM - the below is stuff within the Person class, rather than the Person class's singleton class!
  
  # remember, self is Person, so @home_planet
  # is defined on the Person class itself
  @home_planet = 'Erth'
  Person.home_planet  # => "Erth"
  Person.home_planet = 'Earth'
  @home_planet        # => "Earth"


  attr_accessor 'name'
  def initialize(name)
    # self is now an instance of person, so @name
    # is defined for this particular person
    @name = name
  end

  # This one is for instances
  def home_planet
    Person.home_planet
  end
end

Person.home_planet
kate = Person.new 'Kate Beckinsale'
josh = Person.new 'Josh Cheek'
kate.home_planet  # => "Earth"
josh.home_planet  # => "Earth"
kate.name         # => "Kate Beckinsale"
josh.name         # => "Josh Cheek"

Person.instance_variables # => [:@home_planet]
josh.instance_variables   # => [:@name]
