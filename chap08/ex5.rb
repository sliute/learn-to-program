array = []

while true
  puts "Gimme a word:"
  word = gets.chomp
  if word == ""
    break
  else
    array.push(word)
  end
end

array.sort!
puts array
