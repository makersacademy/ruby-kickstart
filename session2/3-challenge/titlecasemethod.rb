
def titlecase
  gsub(/\w+/) do |word|
  word.capitalize end
end