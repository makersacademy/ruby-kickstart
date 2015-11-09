def shuffle arr 
  # arr.sort_by(&:rand)
  # note the above was how Chris pine did 
  # do it, but it no longer works, instead do the
  # following:
  arr.shuffle
end

# p(shuffle([1,2,3,4,5,6,7,8,9]))