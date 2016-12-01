def grandfather_clock &block
  hrs = Time.new.hour
  hrs = hrs - ((hrs-0.5).abs/12).to_i * 12
  hrs.times do
    block.call
  end

end

grandfather_clock { puts 'Frickin\' dong!' }
