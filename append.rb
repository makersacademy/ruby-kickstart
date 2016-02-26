def append(ary, n)
  return ary if n < 0
  ary << n
  append(ary, n-1)
end


def reverse_append(ary, n)
  return ary.reverse if n < 0
  ary << n
  reverse_append(ary, n-1)
end


def fib(n)
  return 0 if n <= 0
  return 1 if n == 1
  fib(n-2) + fib(n-1)
end
