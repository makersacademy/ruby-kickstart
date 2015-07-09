# There are two ways to represent a literal String in Ruby: With double quotes ( "" ) or single quotes ( '' ).
# With double quotes, you can place special sequences, like newlines (\n) in the string that will be converted.
# With single quotes, the string comes out just as it's typed.

puts "Here's\nTwo lines. #{1 + 5}"
puts 'This will\nonly be one line #{1 + 5}'

  # Output:
  # Here's
  # Two lines.
  # This will\nonly be one line

# Best to use double quotes as much as possible.
# Interpolation does not work with single quotes as seen above
