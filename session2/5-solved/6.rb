require 'prime'

def prime_chars?(strings)
  Prime.prime?(strings.join.length)
end