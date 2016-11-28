puts (365 * 24).to_s + " hours in a year."
puts "Or " + (366 * 24).to_s + " hours in a leap year."

puts ((10 * 365 + 2) * 24 * 60).to_s + " minutes in a decade"
puts (40 * (365 + 40/4) * 24 * 3600).to_s + " seconds in my life"

puts (Time.new - Time.gm(1976, 3, 5, 11, 30))

puts "The author\'s " + (1_025_000_000 / 3600 / 24 / 365).to_s + " years old."
