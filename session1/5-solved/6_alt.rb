def odds_and_evens(string, return_odds)
  return_odds ? (0..(string.size)).map {|i| string[i] if i.odd? }.compact.join : (0..(string.size)).map {|i| string[i] if i.even? }.compact.join
end