# well, aside from just using the built-in sort method:

# The well-known quicksort algorithm.
def sort arr
  return arr if arr.length <= 1
  
  middle = arr.pop
  less = arr.select{|x| x < middle}
  more = arr.select{|x| x >= middle}

  sort(less) + [middle] + sort(more)
end

# p(sort(['can','feel','singing','like','a','can']))