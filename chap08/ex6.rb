line_width = 60
puts "Table of Contents".center(line_width)
toc = [[1, "Getting Started", 1], [2, "Numbers", 9], [3, "Letters", 13]]

toc.each do |line|
  puts "Chapter #{line[0]}: #{line[1]}".ljust(line_width/2) + "page #{line[2]}".rjust(line_width/2)
end
