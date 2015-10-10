# ((((1) + 2) + 3) + 4)

def sum_upto(n)
  return 1 if n == 1
  sum_upto(n-1) + n
end

sum_upto(1) # => 1
sum_upto(2) # => 3
sum_upto(3) # => 6
sum_upto(4) # => 10
sum_upto(10) # => 55
