# Given an object, return the name of its longest method
# o = Object.new
# def o.this_is_a_really_really_really_really_really_long_method_name
# end
#
# longest_method o # => :this_is_a_really_really_really_really_really_long_method_name

def longest_method obj
	longest = ":"
	obj.methods.each do |method|
		if method.size > longest.size then longest = method end
		end
	longest # See answer for max_by method
end