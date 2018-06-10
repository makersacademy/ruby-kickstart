
def odds_and_evens(string, return_odds)
  str=""
  arr=string.split("")
  return_odds == true ? (arr.each_with_index{|x, i| str.concat(x) if i.odd?}) : (arr.each_with_index{|x, i| str.concat(x) if i.even?})
    str
end