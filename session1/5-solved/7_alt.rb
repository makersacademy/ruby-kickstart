def pirates_say_arrrrrrrrr(string)
  (0..(string.size)).map {|i| string[i+1] if string[i] =~ /[rR]/}.compact.join
end