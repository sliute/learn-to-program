def factorial num
  if num < 0
    return 'You can\'t take the factorial of a negative number! (most of the times)'
  end

  if num <=1
    1
  else
    num * factorial(num-1)
  end
end

puts factorial(3)
puts factorial(30)
