# MY ANNOTATED OFFICIAL SOLUTION

# Annotated for the following arguments: (1) string = "rare" and (2) return_odds = true.

def odds_and_evens(string, return_odds)
# Creates new method with two arguments, 'string' and 'return_odds' boolean.

  to_return = ""
# Creates new variable and assigns it an empty string.

  string.size.times do |index|
# First applies the .size method to the string to calculate the size of the string and return the resulting number.  E.g. if the string is "Rare", .size will applied to the string returns 4 because "Rare" has 4 letters.

# Second applies the .times to the number returned after calculating the string size.  E.g. if the string is "Rare", .times will execute the following loop x4 times.

# Third the "| index |" means do for each indexed character the following steps.  A string has an index, e.g. [[0, r], [1, a], [2, r], [3, e]], where the first character is the index number and the second is the corresponding character.  Note '0' is considered an even number for coding purposes.

    next if return_odds && index.even?
    # First iteration iterates over index[0], i.e. "r'
    # => next if true && r.even?
    # => next if true && true
    # => next if true
    # => therefore ends loop and skips "r", telling ruby to move on and iterate over the next item in the index, which is index[1], i.e. "a".

    # Second iteration iterates over index[1], i.e. "a".
    # => next if true && a.even?
    # => next if true && false
    # => next if false
    # => therefore tells ruby don't skip "a" and instead move on to complete next step using index[1] as the return value.

    # Third iteration iterates over index[2], i.e. the second letter "r".
    # => next if true && r.even?
    # => next if true && true
    # => next if true
    # => therefore ends loops and skips second letter "r", telling ruby to move on and iterate over the next item in the index, which is index[3], i.e. "e".

    # Fourth (and final) iteration iterates over index[3], i.e. "e".
    # => next if true && e.even?
    # => next if true && false
    # => next if false
    # => therefore tells ruby don't skip "e" and instead move on to complete next step using index[3] as the return value.

    puts "#{index}"

    # Second iteration puts current return value (i.e. index[1], "a") to screen.

    # Fourth iteration puts current return value (i.e. index[4], "e" to screen)

    next if !return_odds && index.odd?
    # Second iteration continues to iteratre this step over index[1], i.e. "a".
    # => next if false && a.even?
    # => next if false && false
    # => next if false
    # => therefore tells ruby to move on to the next steps using index[1], i.e. "a" as the return value.

    # Fourth iteration continues to iterate this step over index[3], i.e. "e".
    # => next if false && e.even?
    # => next if false && false
    # => next if false
    # => therefore tells ruby don't skip "e" and instead move on to complete next steps using index[3], i.e. "e".

    puts "#{index}+x"

    # Second iteration puts current value of return (index[1], i.e. "a") to screen.

    # Fourth iteration puts current value of return (index[3], i.e. "e") to screen.

    to_return << string[index]
    # Second interation continues to iteratre this step over index[1], i.e. "a".
    # => "" << string[1]
    # => "" << a
    # => to_return = "a"
    # In other words, ruby adds the current return value, index[1] (i.e. "a"), to the variable "to_return".
    # That ends the second iteration and we move on to the third iteration to iteratre index[2], i.e. the second letter "r".

    # Fourth iteration continues to iterate this steps over index[3], i.e. "e".
    # => "a" << string[3]
    # => "a" << "e"
    # => to_return = "ae"
    # In other words, ruby adds the current return value, index[3] (i.e. "e"), to the variable "to_return".
    # That ends the fourth and final iteration and closes the loop.
  end

  to_return
# Return the final value of to_return after iterating each character in the chosen string.  This does not get returned until the above loop has completed.

end