def old_style_roman_numeral(x)
  mcount = (x/1000).to_i
  dcount = ((x - mcount*1000)/500)
  ccount = ((x - mcount*1000 - dcount*500)/100)
  lcount = ((x - mcount*1000 - dcount*500 - ccount*100)/50)
  xcount = ((x - mcount*1000 - dcount*500 - ccount*100 - lcount*50)/10)
  vcount = ((x - mcount*1000 - dcount*500 - ccount*100 - lcount*50 - xcount*10)/5)
  icount = x - mcount*1000 - dcount*500 - ccount*100 - lcount*50 - xcount*10 - vcount*5
  puts 'The Arab numeral ' + x.to_s + ' converts to the Old Latin ' + 'M'*mcount + 'D'*dcount + 'C'*ccount + 'L'*lcount + 'X'*xcount + 'V'*vcount + 'I'*icount + '.'
end

puts 'So what\'s your positive Arab numeral?'
number = gets.chomp.to_i
if number > 0
  old_style_roman_numeral(number)
else
  puts 'That\'s no positive Arab numeral, you little b****r!'
end
