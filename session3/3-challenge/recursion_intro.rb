def append(arr, n)

return arr if n < 0
arr << n
append(arr, n-1)

end


def reverse_append (arr, n)

return arr if n < 0
reverse_append(arr, n-1)
arr << n
arr

end

def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  fib(n-1) + fib(n-2)
end

def fact(n)
  return 1 if n == 1
  
  f = n * fact(n-1)
  
end

puts fact(4)



puts fib 10
