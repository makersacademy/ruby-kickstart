# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? numbers
    tester = false
    numbers.each_cons(3) do |a|
        if a[0] == a[1] && a[0] == a[2]
            tester = true
            break
        else
            tester = false
        end
    end
    #puts "this is #{tester}"
    return tester
end

#got_three? [1,1,2,2]