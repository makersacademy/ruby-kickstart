def your_sort(array, sorted = [], &block)

  if block == nil
    block = lambda { |a,b| a <=> b }
  end

  return sorted if array.empty?

  unsorted = []

  lowest = array.pop

  array.length.times do
    item = array.pop
    if block.call(item, lowest) == -1
      unsorted << lowest
      lowest = item
    else
      unsorted << item
    end
  end

  sorted << lowest

  your_sort(unsorted, sorted, &block)

end
