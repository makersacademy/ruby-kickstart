def got_three?(ary)
  ary.each_cons(3) do |v0, v1, v2|
    return true if v0 == v1 && v1 == v2
  end
  false
end