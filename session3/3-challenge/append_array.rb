def append (ary, n)
  return ary if n < 0
  ary << n
  append(ary, n-1)
end

append [], 2 # => [2, 1, 0]
