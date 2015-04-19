# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

#steps
	#create method match_maker that accepts default = true, and a splat argument
	#create an array where every two elements true or false (split into 2's) => method for slicing?
	#set logic based on first parameter which defaults to true

	def match_maker(logic, *arrays)
		new_arrays =[]
		arrays.each_slice(2){|a,b| new_arrays << [a,b]}
		puts new_arrays
		puts logic
	end

	match_maker(true,1,2,3,4)

# def match_maker(opposites_attract, *elements) #logic parameter, then splat argument
#   to_return = [] #set-up new array to slice in to
#   elements.each_slice 2 do |first, last| #set-up each_slice method
#     first  = !!first
#     last   = !!last
#     result = if opposites_attract
#                first != last
#              else
#                first == last
#              end
#     to_return << result
#   end
#   to_return
# end





