def list_length(node)
  node[:next].nil? ? 1 : 1 + list_length(node[:next])
end

def middle(node)
  (list_length(node) / 2).times { node = node[:next] }
  node[:data]
end

head = {:data => 1, :next => nil} # 1
middle head                        # => 1

head = {:data => 2, :next => head} # 1
middle head                        # => 1

head = {:data => 3, :next => head} # 2
middle head                        # => 2

head = {:data => 4, :next => head} # 2
middle head                        # => 2

head = {:data => 5, :next => head} # 3
middle head                        # => 3

head = {:data => 6, :next => head} # 3
middle head                        # => 3

