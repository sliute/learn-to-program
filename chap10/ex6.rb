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

  #trillions
  write = left/1000000000000
  left = left - write * 1000000000000
  if write > 0
    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    num_string += ' ' if left > 0
  end

  #billions
  write = left/1000000000
  left = left - write * 1000000000
  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    num_string += ' ' if left > 0
  end

  #millions
  write = left/1000000
  left = left - write * 1000000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    num_string += ' ' if left > 0
  end

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

puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1_021_897_352_901)
