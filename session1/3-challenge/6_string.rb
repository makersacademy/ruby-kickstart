# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control

# For example
# odds_and_evens("abcdefg", true)  => "bdf"
# odds_and_evens("abcdefg", false) => "aceg"



def odds_and_evens(string, return_odds)
  answer = ''

  if return_odds == false
    index_O = 0
    while index_O <= string.length
      answer = answer + string[index_O].to_s
      index_O = index_O + 2
    end

    return answer
  end

  if return_odds == true
    index_E = 1
    while index_E <= string.length
      answer = answer + string[index_E].to_s
      index_E = index_E + 2
    end

    return answer
  end
end


puts(odds_and_evens("abcdefg", true))



