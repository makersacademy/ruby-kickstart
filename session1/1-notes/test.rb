# t17.rb
=begin
MyConstant  = 12
my_variable = 13
def example
  begin
    p MyConstant        # => 12
    p my_variable       # =>
  rescue => exception
    exception         # => #<NameError: undefined local variable or method `my_variable' for main:Object>
  end
end

puts
#
#

# So does unless
def unless_returns_value(bool)
  unless bool
    p "nope, it's not true"
  else
    p "yep, it's true"
  end
end

unless_returns_value true   # => "yep, it's true"
unless_returns_value false  # => "nope, it's not true"
=end

def my_test
  i_am_young = true

  unless i_am_young
    "You're old!"
  else
    "Golly, you're so youthful!"
  end
end

p my_test
