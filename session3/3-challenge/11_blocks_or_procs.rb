# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!

# Write a method that initializes an Array
# it receives one parameter, which is 5 by default, but can be overridden by the user
# The parameter determines the size of the Array to initialize
#
# If a block is submitted, use that block to initialize each index in the Array (pass it the current index)
#
# If a block is not submitted, initialize the Array to 100 times the array's index, as a String
#
# CONDITIONS:
#   Do not loop through the Array to initialize it, instead, use the block form
#
# HINTS:
#   Remember that the Array initializer will pass the index being initialized to your block that is doing the initializing
#   (if you wish to use blocks) Remember that in the block you pass, to Array.new, you can yield to the block the user passed
#   (if you wish to use procs)  You can place the block you received into the block spot with the ampersand ( ampersand to get it out, and to put it in )
#
# EXAMPLES:
#
# array_init(2) { |i| i.to_s }    # => ['0', '1']
# array_init { |i| i.to_s }       # => ['0', '1', '2', '3', '4']
# array_init 2                    # => ['0', '100']
# array_init                      # => ['0', '100', '200', '300', '400']
# array_init { 'hi }              # => ['hi', 'hi', 'hi', 'hi', 'hi']
# array_init 10 do |i|            # => [0, -5, 400, -15, 800, -25, 1200, -35, 1600, -45]
#   if i % 2 == 0
#     i * 200
#   else
#     i * -5
#   end
# end


#  @initializer = (initializer || Proc.new { |person| })

def array_init n = 5, &block
	if block.nil?
		block = Proc.new {|i| (100 * i).to_s }
	end
	# block ||= Proc.new {|i| (100 * i).to_s }
	(0...n).to_a.map(&block) 
#Array.new(size, &block)
end

# p array_init(2) { |i| i.to_s } 
# p array_init(2) { |i| i.to_s }    # => ['0', '1']
# p array_init { |i| i.to_s }       # => ['0', '1', '2', '3', '4']
# p array_init 2                    # => ['0', '100']
# p array_init                      # => ['0', '100', '200', '300', '400']
# p array_init { 'hi' }  


# p array_init 10 do |i|            # => [0, -5, 400, -15, 800, -25, 1200, -35, 1600, -45]
#   if i % 2 == 0
#     i * 200
#   else
#     i * -5
#   end
#  end




















