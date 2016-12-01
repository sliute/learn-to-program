def log block_desc, &block
  puts "Beginning #{block_desc}..."
  output = block.call
  puts "...#{block_desc} finished, returning: #{output}"
end

log 'outer block' do

  log 'inner block' do
    2 + 3
  end

  log 'other block' do
    'Shaboogie!'
  end

  false

end
