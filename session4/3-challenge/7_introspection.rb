# Given an object, return the name of its longest method
# o = Object.new
# def o.this_is_a_really_really_really_really_really_long_method_name
# end
#
# longest_method o # => :this_is_a_really_really_really_really_really_long_method_name

def longest_method(object)
  object.methods.sort_by { |method| method.length }[-1]
end
