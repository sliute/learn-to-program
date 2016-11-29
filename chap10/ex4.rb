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

puts shuffle([1, 2, 3, 4, 5, 6, 7, 8, 9])
