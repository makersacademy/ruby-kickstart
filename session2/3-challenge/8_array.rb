# Given an array of elements, return true if any element shows up three times in a row

# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  counter = 1

  previous_item = ""
  is_three = false
  array.each do |item|
    if counter == 3
      is_three = true
    elsif item == previous_item
      counter += 1
    else
      counter = 1
    end
    previous_item = item
    if counter == 3
      is_three = true
    end
  end
  return is_three
end
