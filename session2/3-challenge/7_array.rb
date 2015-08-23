
sentance = gets.chomp  # ~> NoMethodError: undefined method `chomp' for nil:NilClass

array = sentance.split(' ').each_with_index do |item,index|
  new_array = []
  if index.even?
    new_array << item
  end
  new_array
end


# NOt sure why this is not worikinG!!!
