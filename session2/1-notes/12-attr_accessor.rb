# In fact, this naming convention for setters and
# getters is so common that there is a method that
# will write them for you.

class Car
  attr_accessor 'miles' # attribute accessor
end

# combination of attr_writer == setter
#  and attr_reader == getter
Car.instance_methods false # => [:miles, :miles=]
                              # [getter, setter ]
car = Car.new
car.miles = 1000 # => initialises instance variables if attr_accessor used
car.miles # => 1000

car.instance_variables              # => [:@miles]
car.instance_variable_get '@miles'  # => 1000


# attr_accessor is an example of metaprogramming,
# You can write methods yourself like attr_accessor
