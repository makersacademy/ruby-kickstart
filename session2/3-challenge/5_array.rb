
def mod_three(numbers)
     
  #array.map{|x|  ( x % 3 ) if x%3 != 0 && x != nil  }
  numbers.select { |number| number % 3 != 0 }.map { |number| number % 3 }
end