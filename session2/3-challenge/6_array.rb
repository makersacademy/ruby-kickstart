
class Integer
  def prime?
    return false if self < 2
    2.upto Math.sqrt(self) do |x|
      return false if self % x == 0
    end
    true
  end
end

def prime_chars? num
   num.join.length.prime?
end
