# MY ANNOTATED OFFICIAL SOLUTION

# Annotated for the following arguments: (1) string = "rare" and (2) return_odds = false.

def odds_and_evens(string, return_odds)
# Creates new method with two arguments, 'string' and 'return_odds' boolean.

  to_return = ""
# Creates new variable and assigns it an empty string.

  string.size.times do |index|
# First applies the .size method to the string to calculate the size of the string and return the resulting number.  E.g. if the string is "Rare", .size will applied to the string returns 4 because "Rare" has 4 letters.

# Second applies the .times to the number returned after calculating the string size.  E.g. if the string is "Rare", .times will execute the following loop x4 times.

# Third the "| index |" means do for each indexed character the following steps.  A string has an index, e.g. [[0, r], [1, a], [2, r], [3, e]], where the first character is the index number and the second is the corresponding character.  Note '0' is considered an even number for coding purposes.

    next if return_odds && index.even?
    # First iteration iterates over index[0], i.e. "r'.
    # => next if false && r.even?
    # => next if false && true
    # => next if false
    # => therefore tells ruby don't skip "r" and instead move on to complete next step using the return value of index[0].

    # Second iteration iterates over index[1], i.e. 'a'.
    # => next if false && a.even?
    # => next if false && false
    # => next if false
    # => therefore tells ruby don't skip "a" and instead move on to complete next step using the return value of index[1].

    # Third iteration iterates over index[2], i.e. the second letter "r".
    # => next if false && r.even?
    # => next if false && true
    # => next if false
    # => therefore tells ruby don't skip "r" and instead move on to complete next step using the return value of index[2].

    # Fourth iteration iterates over index[3], i.e. "e".
    # => next if false && e.even?
    # => next if false && false
    # => next if false
    # => therefore tells ruby don't skip "e" and instead move on to complete next step using the return value of index[2].

    puts index

    # First iteration puts value of index[0] to screen.

    # Second iteration puts value of index[1] to screen.

    # Third iteration puts value of index[2] to screen.

    # Fourth iteration puts value of index[3] to screen.

    next if !return_odds && index.odd?
    # First iteration continues to iterate this step over index[0], i.e. "r".
    # => next if true && r.odd?
    # => next if true && false
    # => next if false
    # => therefore tells ruby don't skip "r" and instead move on to complete the next steps using index[0] as return value.

    # Second iteration continues to iterate this step over index[1], i.e. "a".
    # => next if true && a.odd?
    # => next if true && true
    # => next if true
    # => therefore tells ruby to skip "a" and ignore the next steps.

    # Third iteration continues to iterate this step over index[2], i.e. "r".
    # => next if true && r.odd?
    # => next if true && false
    # => next if false
    # => therefore tells ruby don't skip "r" and instead move on to complete the next steps using index[2] as return value.

    # Second iteration continues to iterate this step over index[3], i.e. "e".
    # => next if true && e.odd?
    # => next if true && true
    # => next if true
    # => therefore tells ruby to skip "e" and ignore the next steps.

    puts "#{index}+x"

    # First iteration puts value of "index[0]+x" to screen, i.e. "0+x".

    # Third iteration puts value of "index[2]+x" to screen, i.e. "2+x".

    to_return << string[index]
    # First iteration continues to iterate this step over index[0], i.e. "r".
    # => "" << string[0]
    # => "" << "r"
    # => to_return = "r"
    # In other words, ruby adds the current return value, index[0] (i.e. "r"), to the variable "to_return".

    # Second iteration continues to iterate this step over index[2], i.e. "r".
    # => "r" << string[2]
    # => "r" << "r"
    # => to_return = "rr"
    # In other words, ruby adds the current return value, index[2] (i.e. "r"), to the variable "to_return".

  end

  to_return
# Return the final value of to_return after iterating each character in the chosen string.  This does not get returned until the above loop has completed.

end