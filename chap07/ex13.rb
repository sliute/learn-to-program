byesinarow = 0

while true
  puts "What do you want to ask Deaf Granma?"
  input = gets.chomp

  if input == "BYE"
    byesinarow += 1
    # puts byesinarow
      if byesinarow == 3
        break
      else
        puts "WOT?"
      end
  elsif input == input.upcase && input != "BYE"
    puts "NO, NOT SINCE #{(1930 + rand(21)).to_s}."
    byesinarow = 0
  elsif input != input.upcase
    puts "HUH? SPEAK UP, SONNY!"
    byesinarow = 0
  end

end

puts "BYE, SONNY!"
