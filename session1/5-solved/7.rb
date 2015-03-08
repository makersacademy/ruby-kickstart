def pirates_say_arrrrrrrrr(string)
  mystring = ""
  was_r = false
  string.size.times do |i|
    if was_r && string[i].downcase != "r"
      mystring << string[i]
      was_r = false
    elsif was_r && string[i].downcase == "r"
      mystring << string[i]
    elsif was_r != true  && string[i].downcase == "r"
      was_r = true    
    else
      next
    end
  end
  was_r = false
  mystring
end