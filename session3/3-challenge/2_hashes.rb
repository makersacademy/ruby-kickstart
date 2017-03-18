# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(n)
	hash = {}
	i = 1
	while i <= n
		hash[i] = even_steven(i-1)
		i += 2
	end
	hash
end


def even_steven(a)
	arr = []
	while a > 0
		if a.even?
			arr << a
			a -= 2
		else
			a -= 1
		end
	end
	arr.reverse
end


#p even_steven 2
#p staircase 1
#p staircase 5

