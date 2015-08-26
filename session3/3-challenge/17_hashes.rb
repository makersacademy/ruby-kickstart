# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

# def print_list_in_reverse list
#   return if list == nil
#   print_list_in_reverse list[:next]
#   puts list[:data]
# end


# def print_list hash
#  	puts (1..hash[:data]).inject(""){|result, i| i.to_s + "\n" + result }
#  	return nil	
# end

def print_list_in_reverse list
 	puts (1..list[:data]).inject(""){|result, i| result + i.to_s + "\n" }
 	return nil
end

# head = {:data => 1, :next => nil}
# p print_list_in_reverse head                    # >> "1\n"
# head = {:data => 2, :next => head}
# p print_list_in_reverse head                    # >> "2\n1\n"
# head = {:data => 3, :next => head}
# p print_list_in_reverse head                    # >> "3\n2\n1\n"
# head = {:data => 4, :next => head}
# p print_list head                    # >> "4\n3\n2\n1\n"
# head = {:data => 5, :next => head}
# p print_list head                    # >> "5\n4\n3\n2\n1\n"
# head = {:data => 6, :next => head}
# p print_list head  