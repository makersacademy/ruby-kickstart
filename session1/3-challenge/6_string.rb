# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# t

def odds_and_evens(string, return_odds)

  ans = ""
  notans = ""

  if return_odds

    string.size.times do | character |

      if character.odd?
        ans << string[character]
      else
        notans << string[character]
      end

    end

  else

    string.size.times do | character |

      if character.even?
        ans << string[character]
      else
        notans << string[character]
      end

    end

  end

if return_odds

  puts "Check completed: the odd characters are '#{ans}'"

else

  puts "Check completed: the even characters are '#{ans}'"
end

ans

end

