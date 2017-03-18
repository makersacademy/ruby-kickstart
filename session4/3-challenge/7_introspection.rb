# Given an object, return the name of its longest method
# o = Object.new
# def o.this_is_a_really_really_really_really_really_long_method_name
# end
#
# longest_method o # => :this_is_a_really_really_really_really_really_long_method_name
def longest_method(obj)
  obj.methods.sort_by(&:length).pop
end

a = "str"
p longest_method a
