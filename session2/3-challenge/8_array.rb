# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def  got_three? (ary)
    # Silly idea
    # (0..ary.length-3).each do |i|
    #     return true if ary[i] == ary[i + 1] and ary[i + 1] == ary[i + 2] 
    # end
    # false
    
    # ary.each_cons 3 do |a,b,c|
    #     return true if a == b and b == c
    # end
    # false
    
    ary.each_cons 3 do |triplet|
        return true if triplet.uniq.length == 1
    end
    false
end