class String
  def every_other_char
    mystring = ""
    each_char.with_index do |char, index|
      index.even? ? mystring << char : nil
    end
    mystring
  end
end