def english_number number

  return 'Please enter a number that isn\'t negative.' if number < 0
  return 'zero' if number == 0

  num_string = ''
  ones_place = ['one', 'two', 'three',
                'four', 'five', 'six',
                'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
                'forty', 'fifty', 'sixty',
                'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
               'fourteen', 'fifteen', 'sixteen',
               'seventeen', 'eighteen', 'nineteen']
  left = number

  #thousands
  write = left/1000
  left = left - write * 1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    num_string += ' ' if left > 0
  end

  #hundreds
  write = left/100
  left = left - write * 100
  if write > 0
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    num_string += ' ' if left > 0
  end

  #tens & teens
  write = left/10
  left = left - write * 10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string += teenagers[left-1]
      left = 0
    else
      num_string += tens_place[write-1]
    end
    num_string += '-' if left > 0
  end

  #units
  write = left
  left = 0
  num_string += ones_place[write-1] if write > 0

  num_string

end

bottles = 9999
count = bottles

while count > 0
  count == 1 ? plural = " bottle" : plural = " bottles"
  puts english_number(count).capitalize + plural + " of beer on the wall, " + english_number(count) + plural + " of beer."
  count -= 1
  count == 1 ? plural = " bottle" : plural = " bottles"
  puts "Take one down and pass it around, " + english_number(count) + plural + " of beer on the wall."
  puts " "
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, " + english_number(bottles) + " bottles of beer on the wall."
puts " "
