# remember, you can test this file with
#   $ rake 1:3


# Given a number, n, return 10 if it is even, and 20 if it is odd
#
# ten_twenty(5) # => 20
# ten_twenty(6) # => 10

def ten_twenty(n)
	if n % 2 == 0 #could try the n.even? method
		10
	else 
		20
	end
end

ten_twenty(5)
ten_twenty(6)
