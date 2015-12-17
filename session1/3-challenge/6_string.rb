# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)

    a = string.split("")
    
    b = []
    
    if return_odds

        a.each_index do | n |

            if n.to_i.odd?

                b << a.fetch(n) 

            end

        end

    elsif !return_odds

        a.each_index do | n |

           if n.to_i.even?

               b << a.fetch(n) 

            end

        end
            
    end

    b.join

end