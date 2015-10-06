# Using set_whatever and get_whatever is kind of
# distracting. It's better to name your setters
# and getters the same as the variable they represent.

class Car
  def miles=(miles)
    @miles = miles
  end

  def miles
    @miles
  end
end

Car.instance_methods false # => [:miles=, :miles]

car = Car.new
car.miles = 1000  # Ruby knows this is the miles= method GM - rather than being a variable called 'miles', Ruby knows via syntactic sugar that you're actually invoking the miles= method despite the space before the = sign. attr_accessor will actually create the @miles variable and the =miles method (the setter) and the miles method (the getter) for you in one go - see 12-attr-accessor.rb, the next note.  The instance variables are private - doing this makes them look public, because you have the variables required to see them. Again, calling car.miles = 1000 is actually using the miles= method.
car.miles         # => 1000
