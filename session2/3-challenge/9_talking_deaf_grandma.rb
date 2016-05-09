def deaf_grandma
  puts "Hello, it's me Joyce. Who am I speaking to?"
  %x( say "Hello, it's me Joyce. Who am I speaking to?")

  name = gets.chomp

  while name != "BYE" && name != "" && name != name.upcase

      puts "HUH?! SPEAK UP, I COULDN'T HEAR YOUR NAME!"
          %x( say "HUH?! SPEAK UP, I COULDN'T HEAR YOUR NAME")

      name = gets.chomp

  end

  if name == "BYE" || name == ""

    puts "Goodbye, I hate anonymous callers"
    %x( say "Goodbye, I hate anonymous callers")
    return nil

  elsif name != "BYE" && name != "" && name == name.upcase

    puts "Hello #{name}. You'll have to speak up for me, I'm rather deaf"
        %x( say "Hello #{name}.  You'll have to speak up for me, I'm rather deaf")

    say = gets.chomp

      while say != 'BYE'

        if say != say.upcase || say == ""

          puts "HUH?! SPEAK UP, #{name}!"
          %x( say "HUH?! SPEAK UP, #{name}")

          say = gets.chomp

        elsif say == say.upcase && say !=""

          puts "NO, NOT SINCE 1938!"
          %x( say "NO, NOT SINCE 1938!")
          say = gets.chomp

        end

      end

      puts "Goodbye #{name}, you're my favourite grandchild"
        %x( say "Goodbye #{name}, you're my favourite grandchild")

  elsif name == "BYE" || name == ""

    puts "Goodbye, I hate anonymous callers"
    %x( say "Goodbye, I hate anonymous callers")
    return nil
  end

end

deaf_grandma