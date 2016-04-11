# When calling a setter method, always use an explicit
# receiver. Otherwise it looks like you're setting a
# local variable.

# Sergio: A bit, confusing, let's rephrase the example:


class Flight
  attr_accessor 'arrival_time'

  def reset
    arrival_time      # => 1100
    arrival_time = 0
  end
end

f = Flight.new
f.arrival_time = 1100
f.reset
f.arrival_time # => 1100   The variable has not been reset because ruby thinks that arrival_time within method reset 
# is a local variable within the reset scope, so it does not modify "arrival_time" instance variable

    # Wait, wtf is this?
    arrival_time      # => 0
    self.arrival_time # => 1100

    # We should have made it explicit by specifying that
    # arrival_time= is a method on self
class Flight
  attr_accessor 'arrival_time'

  def reset
    self.arrival_time = 0
  end
end

f = Flight.new
f.arrival_time = 1100
f.reset
