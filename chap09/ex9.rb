def new_style_roman_numeral(x) #New Style Roman Numeral

  mcount = (x/1000)
  dcount = ((x - mcount*1000)/500)
  ccount = ((x - mcount*1000 - dcount*500)/100)
  lcount = ((x - mcount*1000 - dcount*500 - ccount*100)/50)
  xcount = ((x - mcount*1000 - dcount*500 - ccount*100 - lcount*50)/10)
  vcount = ((x - mcount*1000 - dcount*500 - ccount*100 - lcount*50 - xcount*10)/5)
  icount = x - mcount*1000 - dcount*500 - ccount*100 - lcount*50 - xcount*10 - vcount*5

  if ccount > 3
    if dcount > 0
      ccount_ns = 'CM'
      dcount = 0
    else
      ccount_ns = 'CD'
    end
  else
    ccount_ns = 'C'*ccount
  end

  if xcount > 3
    if lcount > 0
      xcount_ns = 'XC'
      lcount = 0
    else
      xcount_ns = 'XL'
    end
  else
    xcount_ns = 'X'*xcount
  end

  if icount > 3
    if vcount > 0
      icount_ns = 'IX'
      vcount = 0
    else
      icount_ns = 'IV'
    end
  else
    icount_ns = 'I'*icount
  end

  puts 'The Arab numeral ' + x.to_s + ' converts to the New Style Latin ' + 'M'*mcount + 'D'*dcount + ccount_ns + 'L'*lcount + xcount_ns + 'V'*vcount + icount_ns + '.'
end

puts new_style_roman_numeral(1414)
