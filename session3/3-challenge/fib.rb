def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n-2) + fib(n-1)
end

fib(0) # => 0
fib(1) # => 1
fib(2) # => 1
fib(3) # => 2
fib(4) # => 3
fib(10) # => 55
