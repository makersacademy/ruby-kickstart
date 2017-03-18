# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#

def odds_and_evens(string, return_odds)
indices = (0..(string.length - 1))
new_string = ''
  if return_odds == false
    indices = indices.map{|el| el.even? ? el : nil }.compact
    while indices != []
      new_string = new_string << string[(indices.shift)]
    end
    new_string
  elsif return_odds == true
    indices = indices.map{|el| el.odd? ? el : nil }.compact
    while indices != []
      new_string = new_string << string[(indices.shift)]
    end
    p new_string
  end
end
