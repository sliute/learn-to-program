class Array
  def each_even(&was_a_proc__now_a_block)
    is_even = true
    self.each do |object|
      if is_even
        was_a_proc__now_a_block.call object
      end
      # Toggle from even to odd, or odd to even.
      is_even = !is_even
    end
  end
end

fruits = ['apple', 'bad apple', 'cherry', 'durian']
fruits.each_even do |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
end

[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end
