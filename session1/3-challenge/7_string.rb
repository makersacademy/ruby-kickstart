# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  lett = ''         # output finale
  add_next = false  # boolean da utilizzare nella fx successiva
  string.size.times do |x|  # size method è come length per gli array. Conta quante lettere
    current_char = string[x]  # current_char è una var temporanea per salvare le singole lettere e il loro index
    lett << current_char if add_next # aggiunge le lettere se il bool è true
    add_next = (current_char == 'r' || current_char == 'R') # qui decido quando farlo diventare true
end
lett
end

puts pirates_say_arrrrrrrrr 'ciarforro'
