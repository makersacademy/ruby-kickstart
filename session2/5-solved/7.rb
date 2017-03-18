def alternate_words(strings)
  strings = strings.gsub(/[^a-zA-Z_'’]/, " ")
  myary = []
  strings.split(" ").each_with_index do |word, index|
    myary << word if index.even?
  end
  myary
end