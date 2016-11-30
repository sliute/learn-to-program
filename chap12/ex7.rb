def from_roman(roman_string)

  roman_string.upcase!
  roman_arr = roman_string.split(//).to_a
  arab = 0
  a_val = {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, 'I' => 1,}
  rank = {'M' => 6, 'D' => 5, 'C' => 4, 'L' => 3, 'X' => 2, 'V' => 1, 'I' => 0,}

  for i in 0...(roman_arr.length - 1)
    rank[roman_arr[i]] >= rank[roman_arr[i+1]] ? arab += a_val[roman_arr[i]] : arab -= a_val[roman_arr[i]]
  end

  arab += a_val[roman_arr.last]

end

puts 'What\'s yo Roman numeral, yo?'
roman_string = gets.chomp
puts
puts 'Ok, here\'s what it translates into English numbaz, yo:'
puts from_roman roman_string
