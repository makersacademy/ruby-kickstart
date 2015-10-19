# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list.
# If you don't know what that is, go check out the previous problem.

# head = {:data => 1, :next => nil}
# print_list head # =>
# head = {:data => 2, :next => head}
# print_list head
# head = {:data => 3, :next => head}
# print_list head
# head = {:data => 4, :next => head}
# print_list head
# head = {:data => 5, :next => head}
# print_list head
# head = {:data => 6, :next => head}
# print_list head

def print_list(node)
  p node[:data]
  print_list(node[:next]) if node[:next]
end

