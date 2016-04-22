# When you instantiate an object (make an instance
# of a class), you use the new method. After doing all
# the things necessary to make an object, the new method
# will invoke a method named initialize, and pass it
# any arguments you passed to new. This allows you to
# put your object into an initial state.

# you cannot overload initialize methods (you could write price=0 as default if no price given.)

class Instrument
  def initialize(name, price) # => gives instantiated object a definitive state
    @name = named
    @price = price
  end
                        # requires name and price to set/access attributes
  attr_accessor 'name', 'price'
end

clarinet = Instrument.new 'Clarinet', 250
clarinet.name   # => "Clarinet"
clarinet.price  # => 250

