chars = ['a', 'b', 'c']


# Concatenate with +
chars + ['d', 'e'] # => ["a", "b", "c", "d", "e"]


# Append to an array
chars # => ["a", "b", "c"]
chars << 'd'
chars # => ["a", "b", "c", "d"]


# Replace
chars[1] = 'Bee'
chars # => ["a", "Bee", "c", "d"]


# Delete index
chars.delete_at 1
chars # => ["a", "c", "d"]


# Delete object
chars.delete 'c'
chars # => ["a", "d"]
# Sergio: Removes all the entries 'c' in this case, not just the first one

# Insert
index = 1
chars.insert index, 'b' , 'c'
chars # => ["a", "b", "c", "d"]


# Sorting
['c', 'b', 'd', 'a'].sort # => ["a", "b", "c", "d"]

#Sergio: Sorting for chars and strings is done by ASCII values, so capital letters are before because their ASCII values are lower, see example:
%w( a b c ZZ WW XX YY d).sort  # => ["WW", "XX", "YY", "ZZ", "a", "b", "c", "d"] 





