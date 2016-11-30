require 'time'

birth_dates = Hash.new
puts 'What\'s the input file called?'
#names and dates in input file must be tab-separated
file_name = gets.chomp

#puts File.read(file_name)
open(file_name).each_line do |line|
  l = line.chomp.split("\t")
  birth_dates[l[0]] = l[1]
end

puts 'What\'s the name?'
name = gets.chomp

if birth_dates.has_key?(name)

  birth_date = Time.parse(birth_dates[name])
  now_date = Time.now

  if now_date.month >= birth_date.month
    if now_date.day >= birth_date.day
      puts "#{name}\'s next birthday will be on #{birth_date.day} #{birth_date.strftime("%B")}, #{now_date.year + 1}."
      puts "And they will be #{now_date.year - birth_date.year + 1} years then."
    else
      puts "#{name}\'s next birthday will be on #{birth_date.day} #{birth_date.strftime("%B")}, #{now_date.year}."
      puts "And they will be #{now_date.year - birth_date.year} years then."
    end
  else
    puts "#{name}\'s next birthday will be on #{birth_date.day} #{birth_date.strftime("%B")}, #{now_date.year}."
    puts "And they will be #{now_date.year - birth_date.year} years then."
  end

else
  puts "I don\'t know no #{name}, boy!"
end
