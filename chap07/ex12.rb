while true

  puts "What do you want to ask Deaf Granma?"
  input = gets.chomp

  break if input == "BYE"

  if input != input.upcase
    puts "HUH? SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE #{(1930 + rand(21)).to_s}."
  end
end

puts "BYE, SONNY!"
