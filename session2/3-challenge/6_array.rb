# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder
# are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars? (ary)

	sum = 0

	prime = false

	sary = []

	ary.each do |e|

		sum += e.length

	end

	sum.times do |n|

		sary << n if sum % (n + 1) == 0

	end

	prime = true if sary.length == 2

	prime

end

# puts prime_chars? ['a', 'bc']
# puts prime_chars? ['abcd']
# puts prime_chars? ["abc","de"]
# puts prime_chars? ["ef","hijk"]
# puts prime_chars? ["ef","hi","jk"]
# puts prime_chars? ["abc","def"]
# puts prime_chars? ["abc","def","g"]
# puts prime_chars? ["abc","de","fg"]
# puts prime_chars? ["ab","c","de","fg"]