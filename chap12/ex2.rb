require 'time'

puts 'What year were you born?'
year = gets.chomp
puts 'What month were you born?'
month = gets.chomp
puts 'What day were you born?'
day = gets.chomp

birthday = month + " " + day + ", " + year

birth_time = Time.parse(birthday)
now_time = Time.new

puts
puts "Oh, you are #{now_time.year - birth_time.year} years old!"
puts
puts "SPANK!\n" * (now_time.year - birth_time.year)
puts
