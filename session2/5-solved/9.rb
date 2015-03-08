def deaf_grandma
  while line = gets
    line.chomp!
    if line == "BYE"
      break
    elsif line == line.upcase && line != ""
      puts "NO, NOT SINCE 1938!"
      deaf_grandma
    else
      puts "HUH?! SPEAK UP, SONNY!"
      deaf_grandma
    end
  end
end

deaf_grandma if $0 == __FILE__ # this will call your code so you can run it from the terminal
