Dir.chdir '/Users/stefanliute/Projects/ma-week-02/learn-to-program/testdir'
pic_names = Dir['/Users/stefanliute/Pictures/*.{PNG,png}']
puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|

  print '.'

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

  if File.exist? new_name
    puts
    puts 'A similarly named file already exists!'
    puts 'Renaming the duplicate...'
    new_name = new_name[0...-4] + "_duplicate.png"
    File.rename name, new_name
  else
    File.rename name, new_name
  end

  pic_number = pic_number + 1

end

puts
puts 'Readeee!'
