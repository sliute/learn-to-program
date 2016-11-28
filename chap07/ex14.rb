puts "Start in: "
startyear = gets.chomp.to_i
puts "End in: "
endyear = gets.chomp.to_i
puts

if endyear > startyear
  counter = startyear
  puts "Here are the leap years between #{startyear.to_s} and #{endyear.to_s}"
  puts " "
  while counter <= endyear
    if counter % 400 == 0
      puts counter.to_s
    elsif counter % 100 != 0 && counter % 4 == 0
      puts counter.to_s
    end
    counter += 1
  end
else
  puts "Time never runs backwards! Retry with a later end year."
  puts " "
end
