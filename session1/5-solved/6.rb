def odds_and_evens(string, return_odds)
  mystring = ""
  if return_odds
    string.size.times do |i|
      i.even? ? next : mystring << string[i]
    end
  else
    string.size.times do |i|
      i.odd? ? next : mystring << string[i]
    end
  end
  mystring
end