def append(array, n)
  return array if n < 0
  array << n
  append(array, n-1)
end

def reverse_append(array, n)
  return array if n < 0
  reverse_append(array, n-1)
  array << n
end

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n-1) + fib(n-2)
end

p append([], 5) #=> [0,1,2,3,4,5]
p reverse_append([], 5) #=> [5,4,3,2,1,0]
p fib(3) #=> 55

