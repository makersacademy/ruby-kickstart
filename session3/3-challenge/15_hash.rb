def list_length(head)
  head[:next].nil? ? 1 : 1 + list_length(head[:next])
end

def middle(head)
  (list_length(head) / 2).times { head = head[:next] }
  head[:data]
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

