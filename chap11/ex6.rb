Dir.chdir '/Users/stefanliute/Projects/ma-week-02/learn-to-program/'
audio_files = Dir['/Users/stefanliute/Projects/ma-week-02/learn-to-program/testdir/**/*.{MP3,mp3}']

puts 'What would you like to call your playlist?'
file_name = gets.chomp + '.m3u'

File.open file_name, 'w' do |f|
  audio_files.each { |file_path| f.write file_path + "\n" }
end
