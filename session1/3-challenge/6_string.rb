
def odds_and_evens(string, return_odds)
  str=""
  arr=string.split("")
  return_odds == true ? (arr.each_with_index{|x, i| str.concat(x) if i%2!=0}) : (arr.each_with_index{|x, i| str.concat(x) if i%2==0})
    str
end