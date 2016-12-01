$indent = 0

def log block_desc, &block
  tab = '    '
  puts tab * $indent + "Beginning #{block_desc}..."
  $indent += 1
  output = block.call
  $indent -= 1
  puts tab * $indent + "...#{block_desc} finished, returning: #{output}"

end

log 'outer block' do
  log 'lil block' do
    log 'teeny block' do
      'Chihuahua'
    end
    6*7
  end
  log 'another block' do
    'I love Circassian food!'
  end
  true
end
