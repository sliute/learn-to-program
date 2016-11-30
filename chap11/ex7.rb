def shuffle arr

  output = []

  while arr.length > 0
    rand_index = rand(arr.length)
    curr_index = 0
    new_arr = []

    arr.each do |item|
      if curr_index == rand_index
        output.push item
      else
        new_arr.push item
      end
      curr_index += 1
    end

    arr = new_arr
  end

  output
end


Dir.chdir '/Users/stefanliute/Projects/ma-week-02/learn-to-program/'

audio_files = Dir['/Users/stefanliute/Projects/ma-week-02/learn-to-program/testdir/**/*.{MP3,mp3}']

puts 'How many shuffles for your playlist? Be smart and go for 5 or more.'
shufs = gets.chomp.to_i

shufs.times do
  audio_files = shuffle(audio_files)
end

puts 'What would you like to call your freshly shuffled playlist?'
file_name = gets.chomp + '.m3u'

File.open file_name, 'w' do |f|
  audio_files.each { |file_path| f.write file_path + "\n" }
end
