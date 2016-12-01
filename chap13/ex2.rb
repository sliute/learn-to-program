class Array

  def shuffle
    arr = self
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

end

class Integer

  def factorial

    if self < 0
      return 'You can\'t take the factorial of a negative number! (most of the times)'
    end

    if self <=1
      1
    else
      self * factorial(self-1)
    end

  end

  def to_roman

    mcount = (self/1000)
    dcount = ((self - mcount*1000)/500)
    ccount = ((self - mcount*1000 - dcount*500)/100)
    lcount = ((self - mcount*1000 - dcount*500 - ccount*100)/50)
    xcount = ((self - mcount*1000 - dcount*500 - ccount*100 - lcount*50)/10)
    vcount = ((self - mcount*1000 - dcount*500 - ccount*100 - lcount*50 - xcount*10)/5)
    icount = self - mcount*1000 - dcount*500 - ccount*100 - lcount*50 - xcount*10 - vcount*5

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

    puts 'M'*mcount + 'D'*dcount + ccount_ns + 'L'*lcount + xcount_ns + 'V'*vcount + icount_ns
  end

end
