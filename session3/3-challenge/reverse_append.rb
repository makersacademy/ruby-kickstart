def reverse_append(ary, n)
  return ary if n < 0
  reverse_append(ary, n-1) << n
end

reverse_append [], -1 # => []
reverse_append [], 0 # => [0]
reverse_append [], 1 # => [0, 1]
reverse_append [], 2 # => [0, 1, 2]
reverse_append [], 10 # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
