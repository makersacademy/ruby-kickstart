class String
  def every_other_char
    take_char, result = true, ""
    length.times do |i|
      result << self[i] if take_char
      take_char = !take_char
    end
    result
  end
end
