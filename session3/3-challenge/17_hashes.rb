# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse *list
	stdout = []
	list.each do |k|
		k.each do |k1, v1|
			if v1.is_a?(Hash)
				print_list_in_reverse(v1)
			else
			 	stdout << v1 unless v1.nil?
			end
		end
	end
	stdout.reverse.each { |i| p i }
end
